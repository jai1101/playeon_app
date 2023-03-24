import 'package:flutter/material.dart';

import '../widgets/common.dart';
import '../widgets/style.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Image.asset(
              "assets/images/review_bg.png",
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                children: [
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

                  SizedBox(height: 60),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: VariableText(
                              text: "JUSTIC LEAGUE",
                              fontcolor: primaryColorW,
                              fontsize: size.height * 0.022,
                              fontFamily: fontSemiBold,
                              textAlign: TextAlign.start,
                              weight: FontWeight.w500,
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

                  SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "this is the simple description of the movie",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.justify,
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // MoviePageButtons(),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
