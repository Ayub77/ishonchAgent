// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agent/allpage/customersClick/visitInFull.dart';
import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Customer extends StatefulWidget {
  const Customer({Key? key}) : super(key: key);

  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHex.colorFromHex("#E5E5E5"),
      appBar: AppBar(
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        title: Text(
          "Mijoz ma’lumotlari",
          style: TextStyle(
              color: ColorHex.colorFromHex("#FFFFFF"),
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          window(),
          SizedBox(
            height: 5,
          ),
          WindowClick(
              name: "To‘liq tashrif buyurish",
              leftIcon: "assets/images/perloc.svg",
              ontab: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => VisitInFull()));
              }),
          WindowClick(
              name: "Tez buyurma berish",
              leftIcon: "assets/images/send.svg",
              ontab: () {}),
          WindowClick(
              name: "Hisobotlar",
              leftIcon: "assets/images/list1.svg",
              ontab: () {}),
          WindowClick(
              name: "To‘lov qabul qilish",
              leftIcon: "assets/images/tolov.svg",
              ontab: () {}),
          WindowClick(
              name: "Mahsulotni qaytarish",
              leftIcon: "assets/images/ref.svg",
              ontab: () {}),
          WindowClick(
              name: "Do‘kon haqida",
              leftIcon: "assets/images/info1.svg",
              ontab: () {}),
          WindowClick(
              name: "Eslatma", leftIcon: "assets/images/not.svg", ontab: () {}),
        ],
      ),
    );
  }

  Widget window() {
    return Container(
      height: 190,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
      decoration: BoxDecoration(
          color: ColorHex.colorFromHex("#FFFFFF"),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                        color: ColorHex.colorFromHex("#F5F5F5"), width: 2)),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.58,
                  child: Text(
                    "“ISHONCH” DO‘KONLAR TARMOG‘I Uchko‘prik filiali",
                    style: TextStyle(
                        color: ColorHex.colorFromHex("#000000"),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mavjud limiti:",
                    style: TextStyle(
                        color: ColorHex.colorFromHex("#8896A1"),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                  Text(
                    "2 000 000 000 UZS",
                    style: TextStyle(
                        color: ColorHex.colorFromHex("#000000"),
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ],
              ),
              SvgPicture.asset(
                "assets/images/leftRight.svg",
                width: 20,
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Qarzdorligi:",
                    style: TextStyle(
                        color: ColorHex.colorFromHex("#8896A1"),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                  Text(
                    "400 000 000 UZS",
                    style: TextStyle(
                        color: ColorHex.colorFromHex("#FF4842"),
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(
                "assets/images/info.svg",
                width: 20,
                height: 20,
              ),
              SizedBox(
                width: 8,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "Farg‘ona viloyati, Uchko‘prik tumani,Navro‘rshox ko‘chasi,100-A uy",
                    style: TextStyle(
                        color: ColorHex.colorFromHex("#A3A3A3"),
                        fontWeight: FontWeight.w500,
                        fontSize: 10),
                  )),
              Container(
                height: 20,
                width: 1,
                color: ColorHex.colorFromHex("#CBCBCB"),
              ),
              SizedBox(
                width: 15,
              ),
              SvgPicture.asset(
                "assets/images/locat.svg",
                width: 20,
                height: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "101.25 km",
                style: TextStyle(
                    color: ColorHex.colorFromHex("#A3A3A3"),
                    fontWeight: FontWeight.w500,
                    fontSize: 10),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class WindowClick extends StatelessWidget {
  const WindowClick({
    Key? key,
    required this.name,
    required this.leftIcon,
    required this.ontab,
  }) : super(key: key);
  final String name;
  final String leftIcon;
  final Function ontab;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 1),
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 0,
        color: ColorHex.colorFromHex("#FFFFFF"),
        child: InkWell(
          onTap: (){
            ontab();
          },
          child: Container(
            padding: EdgeInsets.only(right: 25, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      leftIcon,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#2755A5"),
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    )
                  ],
                ),
                SvgPicture.asset(
                  "assets/images/right.svg",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
