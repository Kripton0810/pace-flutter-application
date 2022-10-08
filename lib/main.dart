// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pace_classes_mobile_application/components/course_home_page-display.dart';
import 'package:pace_classes_mobile_application/components/header.dart';
import 'package:pace_classes_mobile_application/data/CourseHomePageModelList.dart';
import 'package:pace_classes_mobile_application/model/CourseHomePageModel.dart';

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

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32,
                      left: 20,
                      bottom: 20,
                    ),
                    child: Text(
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
                  ),
                  SizedBox(
                    height: 224,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: courseHomePageData.length,
                      itemBuilder: (context, item) {
                        return CourseHomePageDisplay(
                          model: courseHomePageData[item],
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
