import 'package:flutter/material.dart';
import './first.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);
  static const nameRoute = '/splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("First"),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text("First >>"),
                onPressed: () {
                  Navigator.of(context).pushNamed(first.nameRoute);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
