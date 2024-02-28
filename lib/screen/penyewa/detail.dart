// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'home.dart';
import 'package:urbabies/screen/payment/payment.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);
  static const nameRoute = '/detail';
  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {
  final _pageController = PageController();
  final List<String> _images = [
    'assets/images/logo.png',
    'assets/images/background.png',
    'assets/images/background2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("UrBabies"),
          backgroundColor: Color.fromARGB(255, 255, 172, 172),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      _images[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
              SizedBox(height: 16.0),
              SizedBox(height: 10.0),
              Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Nama Babysitter",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              SizedBox(height: 20.0),
              Text(
                "Deskripsi ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod neque at diam faucibus, vel semper arcu sollicitudin. Nunc congue, est vel eleifend gravida, turpis mi facilisis sem, non rutrum nibh nibh nec ipsum.",
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, size: 40, color: Colors.yellow),
                  SizedBox(width: 4.0),
                  Text(
                    "4.5",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.0),
              Text(
                "Komentar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text("Nama User"),
                      subtitle: Text("Komentar"),
                    );
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text(
                        "Biaya: Rp. 100.000/jam",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => payment(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 30, 255, 0),
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20.0,
                          ),
                        ),
                        child: Text('Sewa Sekarang'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
