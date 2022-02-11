// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({Key? key}) : super(key: key);

  @override
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorHex.colorFromHex("#FFFFFF"),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Foydalanuvchi:",
                    style: TextStyle(
                        color: ColorHex.colorFromHex("#8896A1"),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Muhammadayubxon Nomonov",
                    style: TextStyle(
                        color: ColorHex.colorFromHex("#000000"),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "So'ngi yangilanish:",
                    style: TextStyle(
                        color: ColorHex.colorFromHex("#8896A1"),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "08.02.2022 16:25:50",
                    style: TextStyle(
                        color: ColorHex.colorFromHex("#000000"),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ChekAndText(
              chek: false,
              name: 'Tezkor yangilash',
            ),
            ChekAndText(
              chek: true,
              name: "To'la yangilash",
            ),
            ChekAndText(
              chek: false,
              name: 'Tashriflar fotosuratlarini yuborish',
            ),
            ChekAndText(
              chek: false,
              name: 'Mahsulotlar rasmini yuklab olish',
            ),
            ChekAndText(
              chek: false,
              name: 'Mahsulot faylini yuklab olish',
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 40),
              color: ColorHex.colorFromHex("#F5F5F5"),
              height: 1,
              width: double.infinity,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 18),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: ColorHex.colorFromHex("#2755A5"),
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        spreadRadius: 3,
                        color:
                            ColorHex.colorFromHex("#2755A5").withOpacity(0.3),
                      )
                    ]),
                child: Text(
                  "Tasdiqlash",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )
          ],
        ));
  }
}

class ChekAndText extends StatelessWidget {
  const ChekAndText({
    Key? key,
    required this.chek,
    required this.name,
  }) : super(key: key);
  final bool chek;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8, bottom: 8),
          color: ColorHex.colorFromHex("#F5F5F5"),
          height: 1,
          width: double.infinity,
        ),
        Row(
          children: [
            Checkbox(
                activeColor: ColorHex.colorFromHex("#2755A5"),
                side: BorderSide(
                  color: ColorHex.colorFromHex("#8896A1"),
                  width: 2,
                ),
                value: chek,
                onChanged: (value) {}),
            SizedBox(
              width: 20,
            ),
            Text(
              name,
              style: TextStyle(
                  color: ColorHex.colorFromHex("#8896A1"),
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            )
          ],
        ),
      ],
    );
  }
}
