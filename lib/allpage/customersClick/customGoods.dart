// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/widgets/windowprice.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomGoods extends StatefulWidget {
  const CustomGoods({Key? key}) : super(key: key);

  @override
  _CustomGoodsState createState() => _CustomGoodsState();
}

class _CustomGoodsState extends State<CustomGoods> {
   int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ColorHex.colorFromHex("#8896A1"),
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        title: Text(
          "Buyurtma tovarlar",
          style: TextStyle(
              color: ColorHex.colorFromHex("#FFFFFF"),
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        elevation: 0.5,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/images/search.svg")),
          IconButton(
              onPressed: () {
                if(currentIndex==1){
                bottomsheet(context);
                }
              },
              icon: SvgPicture.asset("assets/images/filter.svg")),
          SizedBox(
            width: 7,
          )
        ],
      ),
      body: Container(
        child: ContainedTabBarView(
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            Text('Buyurtma tovarlar'),
            Text('Tovarlar'),
          ],
          tabBarProperties: TabBarProperties(
              height: 55,
              background: Container(
                color: ColorHex.colorFromHex("#FFFFFF"),
              ),
              indicatorColor: ColorHex.colorFromHex("#2755A5"),
              indicatorWeight: 3,
              labelColor: ColorHex.colorFromHex("#2755A5"),
              unselectedLabelColor: ColorHex.colorFromHex("#8896A1")),
          views: [
             Container(
               padding: EdgeInsets.all(15),
               child: Column(
                 children: [
                    Container(
              height: 58,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 1),
              child: Card(
                margin: EdgeInsets.all(0),
                elevation: 0,
                color: ColorHex.colorFromHex("#A3A3A3").withOpacity(0.2),
                child: InkWell(
                 
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(right: 25, left: 20),
                    alignment: Alignment.center,
                    child: Text(
                      "Buyurtmani tasdiqlash",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#A3A3A3"),
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
                 ],
               ),
             ), 
             
             
             Container(
                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 3),
               child: Column(
                 children: [
                   WindowPrice()
                 ],
               ),
             ), 
          ],
          onChange: (index) {
          currentIndex = index;
          },
        ),
      ),
    );
  }
  Future bottomsheet(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Container(
            height: MediaQuery .of(context).size.height * 0.7,
            width: MediaQuery .of(context).size.width,
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
                  "Tovarlarni saralash",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                
                
              ],
            ),
          );
        });
      },
    );
  }
}
