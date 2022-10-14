import 'package:flutter/material.dart';
import 'package:pace_classes_mobile_application/model/CourseHomePageModel.dart';

const String courseHomePageRoute = "/courseMainPage";

class CourseHomePage extends StatelessWidget {
  String courseName;

  CourseHomePage({Key? key, required this.courseName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hello world'),
    );
  }
}
