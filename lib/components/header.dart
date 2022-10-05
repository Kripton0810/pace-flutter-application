// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String firstname;
  // ignore: use_key_in_widget_constructors
  const Header({
    required this.firstname,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                      children: [
                        Text(
                          "Hi, ",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "RedHatDisplay",
                              fontWeight: FontWeight.w700,
                              fontSize: 28),
                        ),
                        Text(
                          "$firstname",
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
                          image: AssetImage("assets/notification_bell.png"),
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
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image(
                        image: AssetImage("assets/search_icon.png"),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Search for anything",
                      style: TextStyle(
                          fontFamily: "DMSans", color: Color(0x301D2D3A)),
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
    );
  }
}
