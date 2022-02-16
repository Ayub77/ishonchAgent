// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:agent/allpage/Glavniy.dart';
import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/funcsion/flutterToast.dart';
import 'package:agent/network/apiConstanta.dart/api.dart';
import 'package:agent/network/networkServices.dart/network.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static var box = Hive.box("MyBaza");
  bool viseblity = true;
  Icon eyeIcon = Icon(Icons.visibility_off_outlined);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  _callGlavniy() async {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();
    if (username.isEmpty || password.isEmpty) {
      Utils.firetoast("Malumotlarni to'ldiring");
    } else {
      String basicAuth =
          "Basic " + base64Encode(utf8.encode('$username:$password'));
      box.put('auth', null);
      box.put('auth', basicAuth);

      var res = await Network.getApi(Api.apiLogin, Api.emptyParams());
      if (!res['error']) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Glavniy()));
      } else {
        Utils.firetoast(res['data']);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHex.colorFromHex("#FAFAFA"),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                height: 280,
                width: 280,
                margin: EdgeInsets.only(bottom: 40),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/login.png"),
                        fit: BoxFit.cover)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Username",
                        style: TextStyle(
                            color: ColorHex.colorFromHex("#2755A5"),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: "Gilroy"),
                      )),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 7),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorHex.colorFromHex("#E0E0E0")),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none,
                          suffixIcon: SvgPicture.asset(
                            "assets/images/person1.svg",
                            height: 20,
                            width: 20,
                            fit: BoxFit.scaleDown,
                            color: ColorHex.colorFromHex("#8896A1"),
                          )),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Parol",
                        style: TextStyle(
                            color: ColorHex.colorFromHex("#2755A5"),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: "Gilroy"),
                      )),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 7),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorHex.colorFromHex("#E0E0E0")),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      controller: passwordController,
                      obscureText: viseblity,
                      decoration: InputDecoration(
                          hintText: "Parol",
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                              onPressed: () {
                                if (viseblity) {
                                  setState(() {
                                    eyeIcon = Icon(Icons.visibility_outlined);
                                    viseblity = false;
                                  });
                                } else {
                                  setState(() {
                                    eyeIcon =
                                        Icon(Icons.visibility_off_outlined);
                                    viseblity = true;
                                  });
                                }
                              },
                              icon: eyeIcon,
                              color: ColorHex.colorFromHex("#8896A1"))),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: ColorHex.colorFromHex("#2755A5").withOpacity(0.36),
                      blurRadius: 12,
                      spreadRadius: 0,
                      offset: Offset(0, 4)
                    )
                  ]
                ),
                child: Card(
                  color: ColorHex.colorFromHex("#2755A5"),
                  child: InkWell(
                    onTap: () {
                      _callGlavniy();
                    },
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "Kirish",
                        style: TextStyle(
                            color: ColorHex.colorFromHex("#FFFFFF"),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: "Gilroy"),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
