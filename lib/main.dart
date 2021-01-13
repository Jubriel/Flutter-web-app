import 'package:flutter/material.dart';
import 'package:house_price/screens/Login.dart';

void main() => runApp(PriceApp());

class PriceApp extends StatelessWidget {
  var title = "House Price";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "$title",
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
