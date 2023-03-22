// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/common.dart';
import '../widgets/style.dart';
import '../splashscreen/moviescreen.dart';

class WalkThrough3 extends StatefulWidget {
  const WalkThrough3({super.key});

  @override
  State<WalkThrough3> createState() => _WalkThrough3State();
}

class _WalkThrough3State extends State<WalkThrough3> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset("assets/images/img_w3bitmap.png",
                  fit: BoxFit.fill),
            ),
            Positioned.fill(
              child: Image.asset("assets/images/img_blackbg.png",
                  fit: BoxFit.fill),
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
                    Image.asset("assets/icons/ic_w3txt.png", scale: 2.7),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/ic_w3play.png", scale: 2.7),
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
                                builder: (context) => const WalkThrough3()));
                      },
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
