import 'package:flutter/material.dart';


import 'walkthrough3.dart';

class  walkthrough3 extends StatefulWidget {
  const walkthrough3({super.key});

  @override
  State<walkthrough3> createState() => _walkthrough3State();
}

class _walkthrough3State extends State<walkthrough3> {
  @override
  void initState() {
    //  Future.delayed(Duration(seconds: 4)).then((value) =>
    // Navigator.pushReplacement(context, SwipeLeftAnimationRoute(widget: WalkThroughScreen2()))
    //  );
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
                "assets/images/img_w3bg.png",
                fit: BoxFit.fill,
              )),
          Positioned.fill(
            child: Image.asset("assets/images/img_w3bitmap.png"),
          ),
          
          Positioned.fill(
            child: Image.asset("assets/icons/ic_w3rect.png"),
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
                  Image.asset("assets/icons/ic_w3next.png", scale: 2.7),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
