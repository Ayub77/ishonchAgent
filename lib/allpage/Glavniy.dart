// ignore_for_file: prefer_const_constructors

import 'package:agent/allpage/draverPage.dart';
import 'package:agent/allpage/glavniyPages/customers.dart';
import 'package:agent/allpage/glavniyPages/dashboard.dart';
import 'package:agent/allpage/glavniyPages/notification.dart';
import 'package:agent/allpage/glavniyPages/orders.dart';
import 'package:agent/allpage/glavniyPages/prices.dart';
import 'package:agent/allpage/glavniyPages/update.dart';
import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/widgets/autocomlite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Glavniy extends StatefulWidget {
  const Glavniy({Key? key}) : super(key: key);

  @override
  _GlavniyState createState() => _GlavniyState();
}

class _GlavniyState extends State<Glavniy> {
  final pageController = PageController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int currenttab = 0;
  bool _search = false;
  List<Color> appbarColor = [
    ColorHex.colorFromHex("#FFFFFF"),
    ColorHex.colorFromHex("#2755A5"),
    ColorHex.colorFromHex("#000000"),
    ColorHex.colorFromHex("#FFFFFF")
  ];
  List<String> names = [
    "Dashboard",
    "Narxlar",
    "Mijozlar",
    "Buyurtmalar",
    "Yangilash"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: ColorHex.colorFromHex("#E5E5E5"),
      appBar: AppBar(
        foregroundColor: ColorHex.colorFromHex("#8896A1"),
        backgroundColor: currenttab == 0 ? appbarColor[0] : appbarColor[1],
        leading: IconButton(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: SvgPicture.asset("assets/images/driver.svg")),
        title: Text(
          names[currenttab],
          style: TextStyle(
              color: currenttab == 0 ? appbarColor[2] : appbarColor[3]),
        ),
        centerTitle: true,
        elevation: 0.5,
        actions: [
          currenttab == 0
              ? IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NotificationPage()));
                  },
                  icon: Row(
                    children: [
                      SvgPicture.asset("assets/images/notification.svg"),
                      Transform.translate(
                        offset: Offset(-8, -7),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: ColorHex.colorFromHex("#FF4842"),
                        ),
                      ),
                    ],
                  ))
              : currenttab != 4
                  ? Row(
                      children: [
                        IconButton(
                            onPressed: () {
                                if (currenttab == 2) {
                                
                              }
                            },
                            icon: SvgPicture.asset("assets/images/search.svg")),
                        IconButton(
                            onPressed: () {
                              if (currenttab == 2) {
                                bottomsheet(context);
                              }
                            },
                            icon: SvgPicture.asset("assets/images/filter.svg")),
                      ],
                    )
                  : Container(),
          SizedBox(
            width: 7,
          )
        ],
      ),
      body: PageView(
        controller: pageController,
        // ignore: prefer_const_literals_to_create_immutables
        children: [Dashboard(), Prices(), Customers(), Orders(), Update()],
        onPageChanged: (index) {
          setState(() {
            currenttab = index;
          });
        },
      ),
      drawer: Drawer(
        child: Draver(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: ColorHex.colorFromHex("#FFFFFF"),
        currentIndex: currenttab,
        onTap: (index) {
          setState(() {
            currenttab = index;
            pageController.animateToPage(index,
                duration: Duration(microseconds: 200), curve: Curves.easeIn);
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/dashboard.svg",
                color: currenttab == 0
                    ? ColorHex.colorFromHex("#2755A5")
                    : ColorHex.colorFromHex("#8896A1"),
              ),
              title: Text(
                "Dashboard",
                style: TextStyle(
                    color: currenttab == 0
                        ? ColorHex.colorFromHex("#2755A5")
                        : ColorHex.colorFromHex("#8896A1")),
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/costs.svg",
                color: currenttab == 1
                    ? ColorHex.colorFromHex("#2755A5")
                    : ColorHex.colorFromHex("#8896A1"),
              ),
              title: Text(
                "Narxlar",
                style: TextStyle(
                    color: currenttab == 1
                        ? ColorHex.colorFromHex("#2755A5")
                        : ColorHex.colorFromHex("#8896A1")),
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/persons.svg",
                color: currenttab == 2
                    ? ColorHex.colorFromHex("#2755A5")
                    : ColorHex.colorFromHex("#8896A1"),
              ),
              title: Text(
                "Mijozlar",
                style: TextStyle(
                    color: currenttab == 2
                        ? ColorHex.colorFromHex("#2755A5")
                        : ColorHex.colorFromHex("#8896A1")),
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/corzinka.svg",
                color: currenttab == 3
                    ? ColorHex.colorFromHex("#2755A5")
                    : ColorHex.colorFromHex("#8896A1"),
              ),
              title: Text(
                "Buyurtmalar",
                style: TextStyle(
                    color: currenttab == 3
                        ? ColorHex.colorFromHex("#2755A5")
                        : ColorHex.colorFromHex("#8896A1")),
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/refresh.svg",
                color: currenttab == 4
                    ? ColorHex.colorFromHex("#2755A5")
                    : ColorHex.colorFromHex("#8896A1"),
              ),
              title: Text(
                "Yangilash",
                style: TextStyle(
                    color: currenttab == 4
                        ? ColorHex.colorFromHex("#2755A5")
                        : ColorHex.colorFromHex("#8896A1")),
              )),
        ],
      ),
    );
  }
}

Future bottomsheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      List<String> items = [
        "A kategoriya",
        "B kategoriya",
        "C kategoriya",
        "D kategoriya",
        "E kategoriya",
      ];
      String select="";
      return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
        decoration: BoxDecoration(
            color: ColorHex.colorFromHex("#FFFFFF"),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7), topRight: Radius.circular(7))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 4,
              width: 110,
              decoration: BoxDecoration(
                  color: ColorHex.colorFromHex("#C4C4C4"),
                  borderRadius: BorderRadius.circular(4)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Ma'lumotlarni saralash",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            DropdownButtonForm(
                currencies: items,
                selectCurrencies: select,
                onChanged: (value){
                  select=value;
                  
                },
                onTap: (){

                },
                labelText: "Kategoriya bo'yicha"),
            Expanded(
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ButtonTheme(
                            height: 55,
                            child: OutlineButton(
                              child: Text('Bekor qilish',
                                  style: TextStyle(
                                      color: ColorHex.colorFromHex("#FF4842"))),
                              borderSide: BorderSide(
                                color: ColorHex.colorFromHex("#FF4842"),
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: FlatButton(
                          height: 55,
                          onPressed: () {},
                          child: Text(
                            "Tasdiqlash",
                            style: TextStyle(
                                color: ColorHex.colorFromHex("#FFFFFF")),
                          ),
                          color: ColorHex.colorFromHex("#2755A5"),
                        )),
                      ],
                    )))
          ],
        ),
      );
    },
  );
}
