// ignore_for_file: prefer_const_constructors

import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Indicators extends StatefulWidget {
  const Indicators({Key? key}) : super(key: key);

  @override
  _IndicatorsState createState() => _IndicatorsState();
}

class _IndicatorsState extends State<Indicators> {
  bool edit = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHex.colorFromHex("#FFFFFF"),
      appBar: AppBar(
        foregroundColor: ColorHex.colorFromHex("#FFFFFF").withOpacity(0.6),
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        title: Text(
          "Ko‘rsatkichlari",
          style: TextStyle(
              color: ColorHex.colorFromHex("#FFFFFF"),
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
        centerTitle: true,
        leading: edit
            ? IconButton(
                onPressed: () {
                  edit = false;
                  setState(() {});
                },
                icon: SvgPicture.asset(
                  "assets/images/closeX.svg",
                ),
              )
            : IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(
                  "assets/images/back.svg",
                ),
              ),
        actions: [
          edit
              ? IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/ok.svg",
                  ),
                )
              : IconButton(
                  onPressed: () {
                    edit = true;
                    setState(() {});
                  },
                  icon: SvgPicture.asset(
                    "assets/images/edit.svg",
                  ),
                ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: edit
          ? Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
            )
          : window(),
    );
  }

  Widget window() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          window1("Ta‘minotchilari:", "Ta‘minotchilari nomi hali kiritilmagan"),
          window1(
              "Hamkorlikdagi bank:", "Hamkorlikdagi bank hali kiritilmagan"),
          window1("Mijozlar soni:", "Mijozlar soni hali kiritilmagan"),
          window1("Maydoni (m2):", "Maydoni (m2) hali kiritilmagan"),
          window1("Kategoriyasi:", "Kategoriyasi hali kiritilmagan"),
          window1("Faoliyat muddati:", "Faoliyat muddati hali kiritilmagan"),
          window1("Xodimlar soni:", "Xodimlar soni hali belgilanmagan"),
        ],
      ),
    );
  }

  Widget window1(String name1, String name2) {
    return Container(
      height: 60,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name1,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: ColorHex.colorFromHex("#8896A1")),
          ),
          Text(
            name2,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: ColorHex.colorFromHex("#8896A1")),
          ),
        ],
      ),
    );
  }
}
