import 'package:flutter/material.dart';
import 'screen/first.dart';
import 'screen/splash.dart';
import 'screen/penyewa/login.dart';
import 'screen/penyedia/login.dart';
import 'screen/penyewa/home.dart';
import 'screen/penyewa/register.dart';
import 'screen/penyewa/detail.dart';
import 'screen/payment/payment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: first.nameRoute, routes: {
      Splash.nameRoute: (context) => Splash(),
      first.nameRoute: (context) => first(),
      login1.nameRoute: (context) => login1(),
      login2.nameRoute: (context) => login2(),
      home1.nameRoute: (context) => home1(),
      register1.nameRoute: (context) => register1(),
      detail.nameRoute: (context) => detail(),
      payment.nameRoute: (context) => payment(),
    });
  }
}
