import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore_for_file: prefer_const_constructors

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Color(0xff00A9B7),
    ),
  );
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff00A9B7),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff00A9B7),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            //top header for greeting
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Container(
                padding: EdgeInsets.only(top: 16, left: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //for name hi subhankar! and start learning
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "Hi, ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "RedHatDisplay",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 28),
                                ),
                                Text(
                                  "data",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "RedHatDisplay",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 28),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Image(image: AssetImage("assets/hi_png.png")),
                              ],
                            ),
                            Text(
                              "Let's start learning!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "DMSans",
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 18),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Image(
                                  image: AssetImage("assets/shoping_cart.png"),
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Image(
                                  image: AssetImage(
                                      "assets/notification_bell.png"),
                                  height: 40,
                                  width: 40,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, right: 20),
                      child: Container(
                        width: double.infinity,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage("assets/search_icon.png"),
                            ),
                            Text(
                              "Search for anything",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  color: Color(0x301D2D3A)),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                decoration: const BoxDecoration(
                  color: Color(0xff00A9B7),
                  image: DecorationImage(
                    image: AssetImage('assets/header_waves_png.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: const [
                  Text("data"),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
