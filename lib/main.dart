import 'package:Walltec/screens/transfer/list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Walltec());
}

class Walltec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListTransfer(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}