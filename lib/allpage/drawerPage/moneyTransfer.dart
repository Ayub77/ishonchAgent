// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/widgets/autocomlite.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MoneyTransfer extends StatefulWidget {
  const MoneyTransfer({Key? key}) : super(key: key);

  @override
  _MoneyTransferState createState() => _MoneyTransferState();
}

class _MoneyTransferState extends State<MoneyTransfer> {
 
  bool _color1 = true;
  bool _color2 = true;
  var maskFormatter = new MaskTextInputFormatter(mask: '### ### ### ### ### ###', filter: { "#": RegExp(r'[0-9]') });
  List<String> items = ["salom","kim","qani","nima gap"];
  String select1 = "";
  String select2 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        foregroundColor: ColorHex.colorFromHex("#FFFFFF").withOpacity(0.6),
        title: Text(
          "Pul o'tkazmalar",
          style:
              TextStyle(color: ColorHex.colorFromHex("#FFFFFF"), fontSize: 18),
        ),
        elevation: 0.5,
        centerTitle: true,
      ),
      body: Container(
        child: ContainedTabBarView(
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            Text('Kassirga'),
            Text('Agentga'),
          ],
          tabBarProperties: TabBarProperties(
              height: 55,
              background: Container(
                color: ColorHex.colorFromHex("#FFFFFF"),
              ),
              indicatorColor: ColorHex.colorFromHex("#2755A5"),
              indicatorWeight: 3,
              labelColor: ColorHex.colorFromHex("#2755A5"),
              unselectedLabelColor: ColorHex.colorFromHex("#8896A1")),
          views: [
           window(1,select1,_color1),
           window(2,select2,_color2)
          ],
          onChange: (index) => print(index),
        ),
      ),
    );
  }
 Widget window(int id,String select,bool _color){
   return Container(
                margin: EdgeInsets.only(top: 1),
                color: ColorHex.colorFromHex("#FFFFFF"),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 7,),
                      DropdownButtonForm(
                        currencies: items.toList(),
                        selectCurrencies: select,
                        labelText: id==1?"Kassir":"Agent",
                        onChanged: (value){
                        setState(() {
                        id==1?select1 = value:select2=value;
                        });
                        },
                        onTap: (){

                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 55,
                        width: double.infinity,
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: ColorHex.colorFromHex("#E9E9E7"),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          children: [
                            Expanded(
                                child: InkWell(
                              onTap: () {
                                setState(() {
                                  id==1?_color1 = true:_color2=true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: _color
                                        ? ColorHex.colorFromHex("#44B71C")
                                        : ColorHex.colorFromHex("#E9E9E7"),
                                    borderRadius: BorderRadius.circular(6)),
                                alignment: Alignment.center,
                                child: Text(
                                  "UZS (sum)",
                                  style: TextStyle(
                                      color: _color
                                          ? ColorHex.colorFromHex("#FFFFFF")
                                          : ColorHex.colorFromHex("#8896A1")),
                                ),
                              ),
                            )),
                            SizedBox(
                              width: 3,
                            ),
                            Expanded(
                                child: InkWell(
                              onTap: () {
                                setState(() {
                                  id==1?_color1 = false:_color2 = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: !_color
                                        ? ColorHex.colorFromHex("#44B71C")
                                        : ColorHex.colorFromHex("#E9E9E7"),
                                    borderRadius: BorderRadius.circular(6)),
                                alignment: Alignment.center,
                                child: Text(
                                  "USD (dollor)",
                                  style: TextStyle(
                                      color: !_color
                                          ? ColorHex.colorFromHex("#FFFFFF")
                                          : ColorHex.colorFromHex("#8896A1")),
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 59,
                        alignment: Alignment.center,
                        child: TextField(
                          inputFormatters: [maskFormatter],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              label: Text("summani kiriting"), 
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorHex.colorFromHex("#E0E0E0"))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ColorHex.colorFromHex("#E0E0E0"))),
                              suffixIcon: Container(
                                height: double.infinity,
                                width: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  _color ? "UZS" : "USD",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: ColorHex.colorFromHex("#858585")),
                                ),
                              )),
                        ),
                      ),
                      SizedBox(height: 60,),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 59,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorHex.colorFromHex("#2755A5"),
                            borderRadius: BorderRadius.circular(7),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6,
                                spreadRadius: 3,
                              color: ColorHex.colorFromHex("#2755A5").withOpacity(0.3),
                              )
                            ]
                          ),
                          child: Text("Tasdiqlash",style: TextStyle(color: Colors.white,fontSize: 18),),
                        ),
                      )
                                        ],
                  ),
                ));
 } 
}

