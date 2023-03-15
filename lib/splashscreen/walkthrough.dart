import 'package:flutter/material.dart';
import 'package:playeon/widgets/common.dart';

import 'walkthrough2.dart';


class WalkThroughScreen1 extends StatefulWidget {
  const WalkThroughScreen1({super.key});

  @override
  State<WalkThroughScreen1> createState() => _WalkThroughScreen1State();
}

class _WalkThroughScreen1State extends State<WalkThroughScreen1> {
  @override
  void initState() {
    //  Future.delayed(Duration(seconds: 4)).then((value) =>
    // Navigator.pushReplacement(context, SwipeLeftAnimationRoute(widget: WalkThroughScreen2()))
    //  );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height*0.5,
            child: Image.asset("assets/images/img_war.png",
            fit: BoxFit.fill,)),
           Positioned.fill(
            child: Image.asset("assets/icons/ic_filter.png"),
          ),
           Positioned.fill(
            child: Image.asset("assets/icons/ic_rect.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/ic_getFirst.png", scale: 2.7),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/ic_playgon.png", scale: 2.7),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/ic_next.png", scale: 2.7),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
