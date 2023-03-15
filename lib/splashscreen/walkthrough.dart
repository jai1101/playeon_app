

import 'package:flutter/material.dart';
import 'package:playeon/splashscreen/walkthrough2.dart';

import '../widgets/common.dart';
import 'walkthrough.dart';

class WalkThrough1 extends StatefulWidget {
  const WalkThrough1({super.key});

  @override
  State<WalkThrough1> createState() => _WalkThrough1State();
}

class _WalkThrough1State extends State<WalkThrough1> {
  @override
  void initState() {
     Future.delayed(Duration(seconds: 3)).then((value) =>
    Navigator.pushReplacement(context, SwipeLeftAnimationRoute(milliseconds: 300, widget: walkthrough2()))
     );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              width: size.width,
              height: size.height * 0.5,
              child: Image.asset(
                "assets/images/img_war.png",
                fit: BoxFit.fill,
              )),
          Positioned.fill(
            child: Image.asset("assets/icons/ic_filter.png"),
          ),
          Positioned.fill(
            child: Image.asset("assets/icons/ic_rect2.png"),
          ),
          Positioned.fill(
            child: Image.asset("assets/icons/ic_w1rect.png"),
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
                  Image.asset("assets/icons/ic_w1next.png", scale: 2.7),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
