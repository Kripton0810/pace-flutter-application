// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pace_classes_mobile_application/components/header.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Color(0xff00A9B7),
    ),
  );
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //top header for greeting
            Header(
              firstname: "Subhankar",
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //multiple children
                  Text(
                    "Popular Courses",
                    style: TextStyle(
                        fontFamily: "RedHatDisplay",
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              blurRadius: 20,
                              offset: Offset.fromDirection(-5))
                        ]),
                  ),
                  Container(
                    height: 224,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 136, 76, 76)),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, item) {
                        return UnconstrainedBox(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            width: 220,
                            child: Column(
                              children: [
                                //stack is for love widget stars and image
                                Stack(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/pic_for_background.png',
                                      ),
                                      width: 220,
                                      height: 140,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 16),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 16),
                                            width: 49,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Center(
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                      "assets/star_image.png"),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    "4.8",
                                                    style: TextStyle(
                                                        fontFamily: "DMSans"),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 16),
                                            width: 28,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Image.asset(
                                              "assets/heart.png",
                                              color: Color.fromARGB(
                                                  255, 163, 153, 153),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 16),
                                  child: Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Design Thingking Fundamental",
                                        style: TextStyle(
                                          fontFamily: "DMSans",
                                          fontSize: 14,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            "assets/instructor.png",
                                          ),
                                          Text("Author name"),
                                        ],
                                      ),
                                      Text("Price")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
