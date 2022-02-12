// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Characteristics extends StatefulWidget {
  const Characteristics({Key? key}) : super(key: key);

  @override
  _CharacteristicsState createState() => _CharacteristicsState();
}

class _CharacteristicsState extends State<Characteristics> {
  bool edit = false;
  final nameController = TextEditingController();
  final provinceController = TextEditingController();
  final tumanController = TextEditingController();
  final addressController = TextEditingController();
  var maskFormatter = MaskTextInputFormatter(
      mask: '+99 89#-###-##-##', filter: {"#": RegExp(r'[0-9]')});
  late File _image;
  bool chek = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorHex.colorFromHex("#FFFFFF"),
        appBar: AppBar(
          foregroundColor: ColorHex.colorFromHex("#FFFFFF").withOpacity(0.6),
          backgroundColor: ColorHex.colorFromHex("#2755A5"),
          title: Text(
            "Xarakteristikasi",
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
                    chek = false;
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
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                color: ColorHex.colorFromHex("#FFFFFF"),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () async {
                          final ImagePicker _picker = ImagePicker();
                          XFile? image = await _picker.pickImage(
                              source: ImageSource.camera);
                          setState(() {
                            if (image != null) {
                              _image = File(image.path);
                              chek = true;
                            }
                          });
                        },
                        child: Container(
                          height: 116,
                          width: 116,
                          decoration: BoxDecoration(
                            color: ColorHex.colorFromHex("#F5F5F5"),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: chek
                              ? Image.file(
                                  _image,
                                  fit: BoxFit.cover,
                                )
                              : SvgPicture.asset(
                                  "assets/images/camera.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _textfield(nameController, "Do‘kon nomi",
                          "Do‘kon nomini kiriting"),
                      SizedBox(
                        height: 10,
                      ),
                      _textfield(
                          provinceController, "Viloyat", "Viloyatni kiriting"),
                      SizedBox(
                        height: 10,
                      ),
                      _textfield(tumanController, "Tuman", "Tumanni kiriting"),
                      SizedBox(
                        height: 10,
                      ),
                      _textfield(
                          addressController, "Manzil", "Manzilni kiriting"),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/images/locat1.svg",
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          label: Text(
                            "Lokatsiya",
                            style: TextStyle(
                                color: ColorHex.colorFromHex("#2755A5"),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          hintText: "Lokatsiya URL ni belgilang",
                          hintStyle: TextStyle(
                              color: ColorHex.colorFromHex("#A3A3A3"),
                              fontWeight: FontWeight.w400),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorHex.colorFromHex("#E0E0E0"),
                                  width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorHex.colorFromHex("#E0E0E0"),
                                  width: 1)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        inputFormatters: [maskFormatter],
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          label: Text(
                            "Telefon raqam",
                            style: TextStyle(
                                color: ColorHex.colorFromHex("#2755A5"),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          hintText: "+99 89* - ***-**-**",
                          hintStyle: TextStyle(
                              color: ColorHex.colorFromHex("#A3A3A3"),
                              fontWeight: FontWeight.w400),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorHex.colorFromHex("#E0E0E0"))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorHex.colorFromHex("#E0E0E0"))),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        inputFormatters: [maskFormatter],
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          label: Text(
                            "Qo‘shimcha telefon raqam",
                            style: TextStyle(
                                color: ColorHex.colorFromHex("#2755A5"),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          hintText: "+99 89* - ***-**-**",
                          hintStyle: TextStyle(
                              color: ColorHex.colorFromHex("#A3A3A3"),
                              fontWeight: FontWeight.w400),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorHex.colorFromHex("#E0E0E0"))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorHex.colorFromHex("#E0E0E0"))),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : window());
  }

  Widget _textfield(_controller, label, hint) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(
              color: ColorHex.colorFromHex("#2755A5"),
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
        hintText: hint,
        hintStyle: TextStyle(
            color: ColorHex.colorFromHex("#A3A3A3"),
            fontWeight: FontWeight.w400),
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorHex.colorFromHex("#E0E0E0"), width: 1)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorHex.colorFromHex("#E0E0E0"), width: 1)),
      ),
    );
  }

  Widget window() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      child: Column(
        children: [
          Container(
            height: 116,
            width: 116,
            decoration: BoxDecoration(
              color: ColorHex.colorFromHex("#F5F5F5"),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              "assets/images/camera.svg",
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          window1("Do‘kon nomi:", "Do‘kon nomi hali kiritilmagan"),
          window1("Viloyat:", "Viloyat hali kiritilmagan"),
          window1("Tuman:", "Tuman hali kiritilmagan"),
          window1("Manzili:", "Manzil hali kiritilmagan"),
          window1("Telefon raqami:", "Telefon raqam hali kiritilmagan"),
          window1(
              "Qo‘shimcha telefon raqami:", "Telefon raqam hali kiritilmagan"),
          window1("Lokatsiya URL:", "Lokatsiya URL hali belgilanmagan"),
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
