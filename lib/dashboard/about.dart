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
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
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
                    // code for live video icon
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
            Padding(
              padding: EdgeInsets.only(left: 10, top: 130),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width * 0.60,
                      height: size.width * 0.30,
                      padding: EdgeInsets.all(10),
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          VariableText(
                            text: "JUSTIC LEAGUE",
                            fontcolor: Colors.white,
                            fontsize: size.height * 0.030,
                            fontFamily: fontMedium,
                            weight: FontWeight.w500,
                          ),
                          SizedBox(height: 5),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              VariableText(
                                text: "3,292 People watching",
                                fontcolor: textColorS,
                                fontsize: size.height * 0.017,
                                fontFamily: fontMedium,
                                weight: FontWeight.w500,
                                // max_lines: 2,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
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
                      margin: EdgeInsets.only(right: 30),
                      height: 100,
                      width: 100,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 120,
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                width: size.width * 0.90,
                height: size.width * 0.30,
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
              padding: const EdgeInsets.only(left: 22.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    VariableText(
                      text: "Like & Share",
                      fontcolor: Colors.white,
                      fontsize: size.height * 0.024,
                      fontFamily: fontMedium,
                      weight: FontWeight.w500,
                      max_lines: 2,
                    ),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: [
                    Container(
                      width: size.width * 0.15,
                      height: size.width * 0.40,
                      child:
                          // img not found
                          Column(
                        children: [
                          Image.asset(
                            "assets/icons/like_ic.png",
                            height: 50,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              VariableText(
                                text: "230K",
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
                    ),
                    Container(
                      width: size.width * 0.15,
                      height: size.width * 0.40,
                      child:
                          // img not found
                          Column(
                        children: [
                          Image.asset(
                            "assets/icons/fav_ic.png",
                            height: 50,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              VariableText(
                                text: "230K",
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
                    ),
                    Container(
                      width: size.width * 0.15,
                      height: size.width * 0.40,
                      child:
                          // img not found
                          Column(
                        children: [
                          Image.asset(
                            "assets/icons/comment_ic.png",
                            height: 50,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              VariableText(
                                text: "230K",
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
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
