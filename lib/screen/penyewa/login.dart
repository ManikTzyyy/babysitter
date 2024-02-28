// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:urbabies/screen/penyewa/home.dart';
import 'package:urbabies/screen/penyewa/register.dart';

class login1 extends StatelessWidget {
  const login1({Key? key}) : super(key: key);
  static const nameRoute = '/login1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.3),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Color.fromARGB(255, 255, 172, 172),
                      child: Image.asset('assets/icons/icon.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.1),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Masukkan Username",
                        labelText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.1),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Masukkan Password",
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        prefixIcon: Icon(Icons.lock_outline),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 50,
                      ),
                      child: TextButton(
                        onPressed: () {
                          // TODO: Tambahkan aksi yang sesuai ketika tombol "Lupa Password?" ditekan
                        },
                        child: Text(
                          "Lupa Password?",
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40.0),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => home1(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 172, 172),
                        padding: EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 50.0,
                        ),
                      ),
                      child: Text('Login'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.1),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text("Belum Punya Akun? Daftar disini"),
                      onPressed: () {
                        Navigator.of(context).pushNamed(register1.nameRoute);
                      },
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
