import 'package:flutter/material.dart';
import 'package:pace_classes_mobile_application/pages/course_page_information.dart';
import 'package:pace_classes_mobile_application/pages/main_home_page.dart';

class MyApplicationRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePageBase());
      case courseHomePageRoute:
        return MaterialPageRoute(
            builder: (_) => CourseHomePage(courseName: args));
    }
  }
}
