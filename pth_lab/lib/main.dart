import 'package:flutter/material.dart';
import 'package:pth_lab/Views/Login.dart';

void main() => runApp(PTHLAB());

class PTHLAB extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PTH LAB',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: LoginPage(title: 'PTH LAB မှကြိုဆိုပါတယ်'),
    );
  }
}









