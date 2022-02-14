import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WindowOrders extends StatelessWidget {
  const WindowOrders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: ColorHex.colorFromHex("#FFFFFF"),
          borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: () {
          print("object");
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
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "“ISHONCH” DO‘KONLAR TARMOG‘I Uchko‘prik filiali",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    )),
                Expanded(
                  child: Container(
                    height: 70,
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "assets/images/close.svg",
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: ColorHex.colorFromHex("#FFA801"),
                        borderRadius: BorderRadius.circular(4)
                      ),
                    ),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Buyurtma statusi:",style: TextStyle(color: ColorHex.colorFromHex("#8896A1"),fontWeight: FontWeight.w500,fontSize: 12),),
                        Text("Kiritildi",style: TextStyle(color: ColorHex.colorFromHex("#000000"),fontWeight: FontWeight.w700,fontSize: 14),),
                      ],
                    )
                  ],
                  
                ),
                 Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Sanasi:",style: TextStyle(color: ColorHex.colorFromHex("#8896A1"),fontWeight: FontWeight.w500,fontSize: 12),),
                        Text("02.04.2022",style: TextStyle(color: ColorHex.colorFromHex("#000000"),fontWeight: FontWeight.w700,fontSize: 14),),
                      ],
                    )
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Buyurtma kodi:",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#A3A3A3"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      "Pro1000500",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 1,
                  color: ColorHex.colorFromHex("#CBCBCB"),
                ),
               
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Bonus qiymati:",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#A3A3A3"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      "20 000 000 UZS",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tovarlar soni:",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      "50 dona",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right:33),
                  child: SvgPicture.asset(
                    "assets/images/leftRight.svg",
                    width: 20,
                    height: 20,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Summasi:",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      "14 500 \$",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#FF4842"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}