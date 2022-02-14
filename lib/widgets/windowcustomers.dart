import 'package:agent/allpage/customersClick/customerClick.dart';
import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WindowCustomer extends StatelessWidget {
  const WindowCustomer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: ColorHex.colorFromHex("#FFFFFF"),
          borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Customer()));
        },
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
                SizedBox(width: 8,),
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
                 SizedBox(width: 15,),
                 SvgPicture.asset(
                  "assets/images/locat.svg",
                  width: 20,
                  height: 20,
                ),
                SizedBox(width: 8,),
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
      ),
    );
  }
}