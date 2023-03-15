import 'package:flutter/material.dart';
import 'package:playeon/widgets/common.dart';


class WalkThroughScreen3 extends StatefulWidget {
  const WalkThroughScreen3({super.key});

  @override
  State<WalkThroughScreen3> createState() => _WalkThroughScreen3State();
}

class _WalkThroughScreen3State extends State<WalkThroughScreen3> {
  @override
  void initState() {
     Future.delayed(Duration(seconds: 4)).then((value) =>
    Navigator.pushReplacement(context, SwipeUpAnimationRoute(milliseconds: 300, widget: WalkThroughScreen3()))
     );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/img_bg.png"),
          ),
           Positioned.fill(
            child: Image.asset("assets/icons/ic_filter.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/ic_logo.png", scale: 2.7),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
