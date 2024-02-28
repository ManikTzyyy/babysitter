// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'penyewa/login.dart';
import 'penyedia/login.dart';

class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);
  static const nameRoute = '/first';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Login sebagai : ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 87, 87, 87),
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 32.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => login2(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 235, 180),
                      padding: EdgeInsets.symmetric(
                        vertical: 20.0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.assignment_add,
                            color: Color.fromARGB(255, 255, 172, 172)),
                        SizedBox(width: 10.0),
                        Text(
                          'Penyedia',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 255, 172, 172),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => login1(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 235, 180),
                      padding: EdgeInsets.symmetric(
                        vertical: 20.0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.face_unlock_outlined,
                            color: Color.fromARGB(255, 255, 172, 172)),
                        SizedBox(width: 10.0),
                        Text(
                          'Penyewa',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 255, 172, 172),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
