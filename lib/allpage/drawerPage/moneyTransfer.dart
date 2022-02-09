// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MoneyTransfer extends StatefulWidget {
  const MoneyTransfer({ Key? key }) : super(key: key);

  @override
  _MoneyTransferState createState() => _MoneyTransferState();
}

class _MoneyTransferState extends State<MoneyTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("money transfer"),),
    );
  }
}