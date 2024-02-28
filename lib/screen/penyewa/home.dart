// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:urbabies/screen/data/babysitter.dart';
import 'detail.dart';

class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);
  static const nameRoute = '/home1';

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<home1> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _selectedIndex == 0
            ? CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    title: Text('Find Your Babysitter'),
                    floating: true,
                    flexibleSpace: Image.asset(
                      'assets/images/background.png',
                      fit: BoxFit.cover,
                    ),
                    expandedHeight: 250,
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (_, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(detail.nameRoute);
                          },
                          child: Card(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    child: Image(
                                      image: productList[index].image,
                                      fit: BoxFit.cover,
                                      height: 80,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productList[index].name,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.yellow),
                                        SizedBox(width: 4),
                                        Text(productList[index].rating),
                                      ],
                                    ),
                                    Text(
                                      productList[index].harga,
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: productList.length,
                    ),
                  ),
                ],
              )
            : _selectedIndex == 1
                ? Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.notifications,
                              size: 40,
                              color: Color.fromARGB(255, 255, 172, 172),
                            ),
                            onPressed: () {
                              // Do something when the notification button is pressed
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/background2.png'),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(color: Colors.grey, width: 3.0),
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/logo.png'),
                        radius: 50,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'User',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        leading: Icon(Icons.account_box_outlined),
                        title: Text('Account'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('setting'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.help_outline_outlined),
                        title: Text('Help'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.logout_outlined),
                        title: Text('Log out'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.face_3_outlined),
              label: 'Babysitter',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 255, 172, 172),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
