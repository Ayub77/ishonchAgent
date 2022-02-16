// ignore_for_file: prefer_const_constructors

import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/network/apiConstanta.dart/api.dart';
import 'package:agent/network/networkServices.dart/network.dart';
import 'package:agent/widgets/windowprice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Prices extends StatefulWidget {
  const Prices({Key? key}) : super(key: key);

  @override
  _PricesState createState() => _PricesState();
}

class _PricesState extends State<Prices> {
  var res;
  bool chek = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi();
  }

  getApi() async {
    Map<String, dynamic> params(String repositoryId, String partnerId) {
      Map<String, dynamic> params = new Map();
      params.addAll({"repository_id": repositoryId, "partner_id": partnerId});
      return params;
    }
    res = await Network.getApi(Api.prices, params("1", "1"));

    if (!res['error']) {
      chek = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorHex.colorFromHex("#E5E5E5"),
        body: chek?ListView.builder(
            itemCount: res['data']['data'].length,
            itemBuilder: (context, index) {
              return WindowPrice(data: res['data']['data'][index],);
            }):Center(child: CircularProgressIndicator(),));
  }
}
