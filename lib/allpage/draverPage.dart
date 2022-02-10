// ignore_for_file: prefer_const_constructors

import 'package:agent/allpage/drawerPage/reports.dart';
import 'package:agent/allpage/drawerPage/settings.dart';
import 'package:agent/allpage/drawerPage/stores.dart';
import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'drawerPage/moneyTransfer.dart';

class Draver extends StatefulWidget {
  const Draver({Key? key}) : super(key: key);

  @override
  _DraverState createState() => _DraverState();
}

class _DraverState extends State<Draver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close)),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Muhammadayubxon Nomonov",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Flutter devaloper",
                    style: TextStyle(
                        fontSize: 14, color: ColorHex.colorFromHex("#A3A3A3")),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Reports()));
                    },
                    leading: SvgPicture.asset("assets/images/list.svg"),
                    title: Text("Hisobotlar",
                        style:
                            TextStyle(color: ColorHex.colorFromHex("#2755A5"))),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MoneyTransfer()));
                    },
                    leading: SvgPicture.asset("assets/images/transfers.svg"),
                    title: Text("Pul o'tkazmalar",
                        style:
                            TextStyle(color: ColorHex.colorFromHex("#2755A5"))),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Stores()));
                    },
                    leading: SvgPicture.asset("assets/images/shops.svg"),
                    title: Text("Biriktirilgan do'konlar",
                        style:
                            TextStyle(color: ColorHex.colorFromHex("#2755A5"))),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Settings()));
                    },
                    leading: SvgPicture.asset("assets/images/settings.svg"),
                    title: Text("Sozlamalar",
                        style:
                            TextStyle(color: ColorHex.colorFromHex("#2755A5"))),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      showAlertDialog(context);
                    },
                    leading: SvgPicture.asset("assets/images/logout.svg"),
                    title: Text("Akkauntdan chiqish",
                        style:
                            TextStyle(color: ColorHex.colorFromHex("#2755A5"))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text(
        "Bekor qilish",
        style: TextStyle(color: Colors.white),
      ),
      color: ColorHex.colorFromHex("#FF4842"),
      height: 45,
      onPressed: () {},
    );
    Widget continueButton = ButtonTheme(
      height: 45,
      child: OutlineButton(
        child: Text('Tasdiqlash',
            style: TextStyle(color: ColorHex.colorFromHex("#2755A5"))),
        borderSide: BorderSide(
          color: ColorHex.colorFromHex("#2755A5"),
          style: BorderStyle.solid,
          width: 1,
        ),
        onPressed: () {},
      ),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Container(
          height: 60,
          width: double.infinity,
          alignment: Alignment.topCenter,
          child: Text("Akkauntdan chiqish")),
      content: Container(
        height: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("Siz haqiqatdanham"),
            Text(
              "Shaxsiy akkauntingizdan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("chiqmochimisiz?"),
          ],
        ),
      ),
      actions: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 5),
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Expanded(child: cancelButton),
              SizedBox(
                width: 10,
              ),
              Expanded(child: continueButton)
            ],
          ),
        )
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
