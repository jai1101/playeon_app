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
    "assets/images/act2.png",
    "assets/images/adv3.png",
    "assets/images/animat3.png",
    "assets/images/cont1.png",
    "assets/images/for3.png",
    "assets/images/rom3.png",
    "assets/images/trend1.png",
    "assets/images/trend4.png",
    "assets/images/cont2.png",
    "assets/images/act2.png",
    "assets/images/adv3.png",
    "assets/images/animat3.png",
    "assets/images/cont1.png",
    "assets/images/for3.png",
    "assets/images/rom3.png",
    "assets/images/trend1.png",
    "assets/images/trend4.png",
    "assets/images/cont2.png",
    "assets/images/act2.png",
    "assets/images/adv3.png",
    "assets/images/animat3.png",
    "assets/images/cont1.png",
    "assets/images/for3.png",
    "assets/images/rom3.png",
    "assets/images/trend1.png",
    "assets/images/trend4.png",
    "assets/images/cont2.png",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
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
                        fontcolor: textColor1,
                        fontsize: size.height * 0.02,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.settings, color: textColor1),
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
                    color: backgroundColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage("assets/images/Avatar.png"),
                          backgroundColor: backgroundColor,
                        ),
                        VariableText(
                          text: "Muhammad Bilal",
                          fontsize: size.height * 0.024,
                          fontFamily: fontMedium,
                          fontcolor: textColor1,
                          weight: FontWeight.w500,
                          max_lines: 2,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomProfileBox(
                              title: "3120",
                              subtitle: "Likes",
                            ),
                            CustomProfileBox(
                              title: "1232",
                              subtitle: "Watching",
                            ),
                            InkWell(
                              onTap: () {
                                //Todo
                              },
                              child: CustomProfileBox(
                                title: "44",
                                subtitle: "Subscribe",
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: size.width,
                          height: size.height * 0.6,
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * verticalPadding),
                          child: Column(
                            children: [
                              Expanded(
                                child: GridView.builder(
                                    itemCount: images.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 6,
                                      crossAxisSpacing: size.width * 0.03,
                                      mainAxisSpacing: size.height * 0.015,
                                      // childAspectRatio: 0.63,
                                      childAspectRatio:
                                          size.width / (size.height * 0.9),
                                    ),
                                    shrinkWrap: false,
                                    scrollDirection: Axis.vertical,
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
      ),
    );
  }
}

class CustomProfileBox extends StatelessWidget {
  String? title;
  String? subtitle;
  CustomProfileBox({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.23,
      height: size.width * 0.22,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: textColor1, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VariableText(
            text: title,
            fontcolor: primaryColor1,
            fontsize: size.height * 0.018,
            fontFamily: fontMedium,
            weight: FontWeight.w600,
          ),
          SizedBox(height: 10),
          Column(
            children: [
              VariableText(
                text: subtitle,
                fontcolor: textColor5,
                fontsize: size.height * 0.017,
                fontFamily: fontMedium,
                weight: FontWeight.w500,
                max_lines: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
