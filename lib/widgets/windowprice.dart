import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/funcsion/trenumber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WindowPrice extends StatelessWidget {
  const WindowPrice({
    Key? key, this.data,
  }) : super(key: key);
  final dynamic data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      margin: EdgeInsets.symmetric(horizontal: 7, vertical: 0.5),
      decoration: BoxDecoration(
          color: ColorHex.colorFromHex("#FFFFFF"),
         ),
      child: InkWell(
        onTap: (){
          print("object");
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
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
                      data[ "product_variant_title"],
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          fontFamily: "Gilroy"),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Tovar soni:",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gilroy",
                          fontSize: 12),
                    ),
                    Text(
                      data[ "count"].toString()+" dona",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontFamily: "Gilroy",
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
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Narxi:",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                     data["price"].toString()+" \$",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#FF4842"),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Gilroy",
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}