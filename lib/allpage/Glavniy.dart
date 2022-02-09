// ignore_for_file: prefer_const_constructors

import 'package:agent/allpage/draverPage.dart';
import 'package:agent/allpage/glavniyPages/customers.dart';
import 'package:agent/allpage/glavniyPages/dashboard.dart';
import 'package:agent/allpage/glavniyPages/orders.dart';
import 'package:agent/allpage/glavniyPages/prices.dart';
import 'package:agent/allpage/glavniyPages/update.dart';
import 'package:agent/funcsion/colorhex.dart';
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
        leading: IconButton(onPressed: (){
          _key.currentState!.openDrawer();
        },
         icon:SvgPicture.asset("assets/images/driver.svg")),
        title: Text(
          names[currenttab],
          style: TextStyle(color: currenttab==0?appbarColor[2]:appbarColor[3]),
        ),
        centerTitle: true,
        elevation: 0.5,
        actions: [
         currenttab==0?IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/images/notification.svg")):
             Row(
               children: [
                 IconButton(
                  onPressed: () {},

                  icon: SvgPicture.asset("assets/images/search.svg")),
                  IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/images/filter.svg")),
               ],
             ) ,
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
