// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class CameraModul extends StatefulWidget {
  const CameraModul({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  _CameraModulState createState() => _CameraModulState();
}

class _CameraModulState extends State<CameraModul> {
  late File _image;
  List<File> items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHex.colorFromHex("#E5E5E5"),
      appBar: AppBar(
        foregroundColor: ColorHex.colorFromHex("#FFFFFF").withOpacity(0.6),
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        actions: [
          IconButton(
            onPressed: () async {
              final ImagePicker _picker = ImagePicker();
              XFile? image =
                  await _picker.pickImage(source: ImageSource.camera);
              if (image != null) {
                _image = File(image.path);
                items.add(_image);
              }
              setState(() {});
            },
            icon: SvgPicture.asset(
              "assets/images/camera.svg",
              fit: BoxFit.scaleDown,
              height: 20,
              width: 20,
              color: ColorHex.colorFromHex("#FFFFFF").withOpacity(0.6),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
        title: Text(
          widget.name,
          style: TextStyle(
              color: ColorHex.colorFromHex("#FFFFFF"),
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
                color: ColorHex.colorFromHex("#11397F").withOpacity(0.2),
                child: InkWell(
                  splashColor: Colors.grey,
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(right: 25, left: 20),
                    alignment: Alignment.center,
                    child: Text(
                      "Rasmli hisobotni tasdiqlash",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#2755A5"),
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
            Expanded(
                child: GridView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return _itemOfFile(items[index]);
              },
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            )),
          ],
        ),
      ),
    );
  }

  Widget _itemOfFile(File _file) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4)
      ),
      child: Image.file(
        _file,
        width: 70,
        height: 70,
        fit: BoxFit.cover,
      ),
    );
  }
}
