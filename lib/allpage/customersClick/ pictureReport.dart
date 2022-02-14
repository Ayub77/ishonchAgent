// ignore_for_file: prefer_const_constructors

import 'package:agent/allpage/customersClick/cameraModul.dart';
import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PictureReport extends StatefulWidget {
  const PictureReport({ Key? key }) : super(key: key);

  @override
  _PictureReportState createState() => _PictureReportState();
}

class _PictureReportState extends State<PictureReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        foregroundColor: ColorHex.colorFromHex("#FFFFFF").withOpacity(0.6),
        title: Text(
          "Rasmli hisobot",
          style: TextStyle(
              color: ColorHex.colorFromHex("#FFFFFF"),
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          WindowPictureReport(name: "Do‘kon yopiq", ontab: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CameraModul(name: "Do'kon yopiq")));
            
          }),
          WindowPictureReport(name: "Tovar joylashishi", ontab: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CameraModul(name: "Tovar joylashishi")));
          }),
          WindowPictureReport(name: "Yaroqsiz tovarlar", ontab: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CameraModul(name: "Yaroqsiz tovar")));
          }),
        ],
      ),
    );
  }
}



class WindowPictureReport extends StatelessWidget {
  const WindowPictureReport({
    Key? key,
    required this.name,
    required this.ontab,
  }) : super(key: key);
  final String name;
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
                Text(
                  name,
                  style: TextStyle(
                      color: ColorHex.colorFromHex("#2755A5"),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
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
