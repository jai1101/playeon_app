// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';

class WalkThrough2 extends StatefulWidget {
  const WalkThrough2({super.key});

  @override
  State<WalkThrough2> createState() => _WalkThrough2State();
}


class _WalkThrough2State extends State<WalkThrough2> {
  // @override
  // void initState() {
  //   Future.delayed(Duration(seconds: 3)).then((value) =>
  //       Navigator.pushReplacement(
  //           context,
  //           SwipeLeftAnimationRoute(
  //               milliseconds: 300, widget: walkthrough3())));
  //   super.initState();
  //  }

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
                "assets/images/img_w2bg.png",
                fit: BoxFit.fill,
              )),
          Positioned.fill(
            child: Image.asset("assets/images/img_w2bitmap.png"),
          ),
          Positioned.fill(
            child: Image.asset("assets/icons/ic_w2rect.png"),
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
                  ElevatedButton(
                      child: Text('Next'),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WalkThrough2()));
                      })

                  // Image.asset("assets/icons/ic_w2next.png", scale: 2.7),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
