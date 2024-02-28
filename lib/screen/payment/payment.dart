import 'package:flutter/material.dart';

class payment extends StatelessWidget {
  const payment({Key? key}) : super(key: key);
  static const nameRoute = '/payment';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Payment"),
          backgroundColor: Color.fromARGB(255, 255, 172, 172),
        ),
      ),
    );
  }
}
