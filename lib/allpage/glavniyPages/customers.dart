// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agent/allpage/customersAddPage/stroresAbout.dart';
import 'package:agent/allpage/customersClick/customerClick.dart';
import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/funcsion/flutterToast.dart';
import 'package:agent/network/apiConstanta.dart/api.dart';
import 'package:agent/network/networkServices.dart/network.dart';
import 'package:agent/widgets/windowcustomers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Customers extends StatefulWidget {
  const Customers({Key? key}) : super(key: key);
  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  var res;
  bool chek =false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi();
  }

  getApi() async {
    res = await Network.getApi(Api.customers, Api.emptyParams());
    if(!res['error']){
      chek = true;
      setState(() {});
    }else{
      Utils.firetoast(res['data']); 
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHex.colorFromHex("#E5E5E5"),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => About()));
        },
      ),
      body: chek?ListView.builder(
          itemCount: res["data"]['data'].length,
          itemBuilder: (context, index) {
            return WindowCustomer( 
              data: res['data']["data"][index],
              ontab: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Customer()));
              }, 
            );
          }):Center(child: CircularProgressIndicator(),),
    );
  }
}
