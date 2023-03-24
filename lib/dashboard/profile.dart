// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:playeon/dashboard/setting.dart';

import 'package:playeon/widgets/style.dart';

import '../widgets/common.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> images = [
    "assets/images/img_justice.png",
    "assets/images/img_rampage.png",
    "assets/images/img_spider.png",
    "assets/images/img_thor.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 15),
                child: Row(children: [
                  Expanded(
                    child: VariableText(
                      text: "Profile",
                      fontcolor: primaryColorW,
                      fontsize: size.height * 0.02,
                      fontFamily: fontMedium,
                      weight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.settings, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Setting()),
                        );
                      }),
                ]),
              ),
              SizedBox(
                child: Container(
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/Avatar.png"),
                        backgroundColor: Colors.black,
                      ),
                      VariableText(
                        text: "Muhammad Bilal",
                        fontsize: size.height * 0.024,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                        max_lines: 2,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            color: textColorS,
                            child: Column(
                              children: [
                                VariableText(
                                  text: "3120",
                                  fontcolor: textColor5,
                                  fontsize: size.height * 0.016,
                                  fontFamily: fontMedium,
                                  weight: FontWeight.w500,
                                  max_lines: 2,
                                ),
                                SizedBox(height: 10),
                                Column(
                                  children: [
                                    VariableText(
                                      text: "Likes",
                                      fontcolor: textColor5,
                                      fontsize: size.height * 0.016,
                                      fontFamily: fontMedium,
                                      weight: FontWeight.w500,
                                      max_lines: 2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Container(
                            color: textColorS,
                            child: Column(
                              children: [
                                VariableText(
                                  text: "1232",
                                  fontcolor: textColor5,
                                  fontsize: size.height * 0.016,
                                  fontFamily: fontMedium,
                                  weight: FontWeight.w500,
                                  max_lines: 2,
                                ),
                                SizedBox(height: 10),
                                Column(
                                  children: [
                                    VariableText(
                                      text: "Watching",
                                      fontcolor: textColor5,
                                      fontsize: size.height * 0.016,
                                      fontFamily: fontMedium,
                                      weight: FontWeight.w500,
                                      max_lines: 2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Container(
                            color: textColorS,
                            child: Column(
                              children: [
                                VariableText(
                                  text: "44",
                                  fontsize: size.height * 0.016,
                                  fontcolor: textColor5,
                                  fontFamily: fontMedium,
                                  weight: FontWeight.w500,
                                  max_lines: 2,
                                ),
                                SizedBox(height: 10),
                                Column(
                                  children: [
                                    VariableText(
                                      text: "Subscribes",
                                      fontcolor: textColor5,
                                      fontsize: size.height * 0.016,
                                      fontFamily: fontMedium,
                                      weight: FontWeight.w500,
                                      max_lines: 2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width,
                        height: size.height * 0.6,
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * verticalPadding),
                        child: Row(
                          children: [
                            Expanded(
                              child: GridView.builder(
                                  itemCount: images.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    // crossAxisSpacing: size.width * 0.03,
                                    // mainAxisSpacing: size.height * 0.015,
                                    //childAspectRatio: 0.63,
                                    childAspectRatio:
                                        size.width / (size.height * 0.36),
                                  ),
                                  shrinkWrap: false,
                                  scrollDirection: Axis.horizontal,
                                  physics: ScrollPhysics(),
                                  itemBuilder: (_, index) {
                                    return Container(
                                        child: Image.asset(images[index]));
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
