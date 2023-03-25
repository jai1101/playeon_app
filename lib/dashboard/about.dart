import 'package:flutter/material.dart';

import '../widgets/common.dart';
import '../widgets/style.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          Image.asset(
            "assets/images/review_bg.png",
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: primaryColorW,
                                  size: 17,
                                ),
                                VariableText(
                                  text: "Back",
                                  fontcolor: primaryColorW,
                                  fontsize: size.height * 0.022,
                                  fontFamily: fontSemiBold,
                                  textAlign: TextAlign.start,
                                  weight: FontWeight.w500,
                                ),
                              ]),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 35,
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.60,
                          height: size.width * 0.40,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              VariableText(
                                text: "JUSTIC LEAGUE",
                                fontcolor: Colors.white,
                                fontsize: size.height * 0.030,
                                fontFamily: fontMedium,
                                weight: FontWeight.w600,
                              ),
                              SizedBox(height: 5),
                              Column(
                                children: [
                                  VariableText(
                                    text: "3,292 People watching",
                                    fontcolor: textColorS,
                                    fontsize: size.height * 0.017,
                                    fontFamily: fontMedium,
                                    weight: FontWeight.w500,
                                    max_lines: 2,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 17,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 17,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 17,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 17,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: textColor5,
                                            size: 17,
                                          ),
                                        ],
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 50, top: 70),
                          height: 80,
                          width: 80,
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: size.width * 0.90,
                    height: size.width * 0.40,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          VariableText(
                            text:
                                "Fuelded by his restored faith in humanity and inspired by Superman   selfless act  Bruce wayne enlists the help of his newfound ally  Daina Prince to face an even greater enemy...",
                            fontcolor: Colors.white,
                            fontsize: size.height * 0.024,
                            fontFamily: fontMedium,
                            weight: FontWeight.w500,
                            max_lines: 6,
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          VariableText(
                            text: "Like & Share",
                            fontcolor: Colors.white,
                            fontsize: size.height * 0.024,
                            fontFamily: fontMedium,
                            weight: FontWeight.w500,
                            max_lines: 2,
                          ),

                          //                            Container(
                          //   width: size.width * 0.23,
                          //   height: size.width * 0.22,
                          //   padding: EdgeInsets.all(10),
                          //   decoration: BoxDecoration(
                          //       color: textColorS, borderRadius: BorderRadius.circular(10)),
                          //   child: Column(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //        Image.asset(
                          //           "assets/icons/ic_like.png",
                          //           height: 400,
                          //           width: double.infinity,
                          //           // fit: BoxFit.cover,
                          //         ),
                          //       SizedBox(height: 10),
                          //       Column(
                          //         children: [
                          //           VariableText(
                          //             text: "230K",
                          //             fontcolor: textColor5,
                          //             fontsize: size.height * 0.017,
                          //             fontFamily: fontMedium,
                          //             weight: FontWeight.w500,
                          //             max_lines: 2,
                          //           ),
                          //         ],
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
