// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';

import '../walkscreen/walkthrough3.dart';
import '../widgets/common.dart';
import '../widgets/style.dart';


class WalkThrough2 extends StatefulWidget {
  const WalkThrough2({super.key});

  @override
  State<WalkThrough2> createState() => _WalkThrough2State();
}

class _WalkThrough2State extends State<WalkThrough2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/img_walkbg2.png",
                fit: BoxFit.fill,
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
                    Image.asset("assets/icons/ic_w2txt.png", scale: 2.7),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/ic_w2play.png", scale: 2.7),
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
