// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pace_classes_mobile_application/components/course_home_page-display.dart';
import 'package:pace_classes_mobile_application/model/CourseHomePageModel.dart';
import 'package:pace_classes_mobile_application/data/CourseHomePageModelList.dart';

class HomePageBottom extends StatelessWidget {
  const HomePageBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> list = courseMapInfo['data'];
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //multiple children

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        )
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 32,
                  right: 20,
                  bottom: 20,
                ),
                child: Text(
                  "See all",
                  style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 14,
                      color: Color(0xff00A9B7),
                      shadows: [
                        Shadow(
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 224,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, item) {
                CourseHomePageModel model = CourseHomePageModel(
                  courseName: list[item]['courseName'],
                  coursePrice: list[item]['coursePrice'] * 1.0,
                  courseId: list[item]['courseId'],
                  courseAuthor: list[item]['courseAuthor'],
                  rating: list[item]['rating'],
                  courseImage: list[item]['courseImage'],
                );
                return CourseHomePageDisplay(
                  model: model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
