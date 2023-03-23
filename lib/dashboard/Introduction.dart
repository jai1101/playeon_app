// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/common.dart';
import '../widgets/style.dart';

class IntroductionPage extends StatelessWidget {
  String? image;
  IntroductionPage({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: Image.asset(
                image!,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        bottomSheet: Container(
          padding: EdgeInsets.symmetric(
              vertical: size.height * verticalPadding,
              horizontal: size.width * horizontalPadding),
          decoration: BoxDecoration(
              color: primaryColorB,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8))),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "Introduction",
                    fontcolor: primaryColorW,
                    fontsize: size.height * 0.02,
                    fontFamily: fontMedium,
                    weight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.close,
                  color: primaryColorW,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.8,
                  child: Image.asset(
                    image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text:
                        "The point of this article is to help you grasp the big picture of getting six pack abs.\n\nIn short, to get six pack abs you need to get leaner and develop your abs musculature. This is done through training and nutrition. The topic of nutrition is covered extensively elsewhere on the net: i won't delive in it.\n\nTraning-wise to build six pack abs. your must combine cardio exercise",
                    fontcolor: primaryColorW,
                    fontsize: size.height * 0.023,
                    fontFamily: fontSemiBold,
                    weight: FontWeight.w300,
                    letter_spacing: 1.4,
                    line_spacing: 1.2,
                    max_lines: 20,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
