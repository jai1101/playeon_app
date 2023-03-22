// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:playeon/splashscreen/walkthrough2.dart';

import '../widgets/common.dart';
import '../widgets/style.dart';

class WalkThrough1 extends StatefulWidget {
  const WalkThrough1({super.key});

  @override
  State<WalkThrough1> createState() => _WalkThrough1State();
}

class _WalkThrough1State extends State<WalkThrough1> {
  @override
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/img_bg.png",
                  ))),
          child: Stack(
            children: [
              SizedBox(
                  width: size.width,
                  height: size.height * 0.5,
                  child: Image.asset(
                    "assets/images/img_war.png",
                    fit: BoxFit.fill,
                  )),
              Positioned(
                top: size.height * 0.2,
                child: Image.asset(
                  "assets/images/img_w1bg.png",
                ),
              ),
              Positioned.fill(
                child: Image.asset(
                  "assets/images/img_greenbg.png",
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/ic_w1txt.png", scale: 2.7),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/ic_w1playgon.png", scale: 2.7),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        btnHeight: size.height * 0.05,
                        btnWidth: size.width * 0.4,
                        borderColor: primaryColorW,
                        btnColor: primaryColor1.withOpacity(0.2),
                        btnRadius: 200,
                        btnTxt: "Next",
                        weight: FontWeight.w300,
                        fontFamily: fontRegular,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WalkThrough2()));
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
