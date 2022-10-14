import 'package:flutter/material.dart';
import 'package:pace_classes_mobile_application/components/header.dart';
import 'package:pace_classes_mobile_application/pages/home_page.dart';

class HomePageBase extends StatelessWidget {
  const HomePageBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //top header for greeting
            Header(
              firstname: "Subhankar",
            ),
            HomePageBottom(),
          ],
        ),
      ),
    );
  }
}
