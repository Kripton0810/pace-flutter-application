import 'package:flutter/material.dart';

class CourseHomePageDisplay extends StatelessWidget {
  final String courseName;
  final double coursePrice;
  final String courseId;
  final String courseAuthor;
  final double rating;

  const CourseHomePageDisplay({
    required this.courseName,
    required this.coursePrice,
    required this.courseId,
    required this.courseAuthor,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        width: 49,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Image.asset("assets/star_image.png"),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                rating.toString(),
                                style: TextStyle(fontFamily: "DMSans"),
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
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          "assets/heart.png",
                          color: Color.fromARGB(255, 163, 153, 153),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: 240,
              margin: EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    courseName,
                    style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/instructor.png",
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        courseAuthor,
                        style: TextStyle(
                          fontFamily: "DMSans",
                          fontSize: 12,
                          color: Color(0xffA9AEB2),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "₹" + coursePrice.toString(),
                    style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff00A9B7),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}