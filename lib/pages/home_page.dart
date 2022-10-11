// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pace_classes_mobile_application/components/course_home_page-display.dart';
import 'package:pace_classes_mobile_application/model/CourseHomePageModel.dart';
import 'package:pace_classes_mobile_application/data/CourseHomePageModelList.dart';

class HomePageBottom extends StatelessWidget {
  const HomePageBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> list = courseMapInfo;
    print(list.length);
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.67,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: ((context, index) {
            List<dynamic> infoDataList = list[index]['data'];
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        bottom: 20,
                      ),
                      child: Text(
                        list[index]['title'],
                        style: TextStyle(
                            fontFamily: "RedHatDisplay",
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                blurRadius: 8,
                                offset: Offset(0, 3),
                              )
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 20,
                        top: 20,
                        bottom: 20,
                      ),
                      child: infoDataList.length > 2
                          ? InkWell(
                              onTap: () {},
                              child: Text(
                                "See all",
                                style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 14,
                                    color: Color(0xff00A9B7),
                                    shadows: [
                                      Shadow(
                                        blurRadius: 8,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                              ),
                            )
                          : Text(""),
                    ),
                  ],
                ),
                SizedBox(
                  height: 224,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: infoDataList.length,
                    itemBuilder: (context, item) {
                      CourseHomePageModel model = CourseHomePageModel(
                        courseName: infoDataList[item]['courseName'],
                        coursePrice: infoDataList[item]['coursePrice'] * 1.0,
                        courseId: infoDataList[item]['courseId'],
                        courseAuthor: infoDataList[item]['courseAuthor'],
                        rating: infoDataList[item]['rating'],
                        courseImage: infoDataList[item]['courseImage'],
                      );
                      return CourseHomePageDisplay(
                        model: model,
                      );
                    },
                  ),
                )
              ],
            );
          })),
    );
  }
}
