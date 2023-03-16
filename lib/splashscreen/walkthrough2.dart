import 'package:flutter/material.dart';
import 'package:playeon/splashscreen/walkthrough3.dart';
import 'package:playeon/widgets/style.dart';

import '../widgets/common.dart';
import 'walkthrough2.dart';

class walkthrough2 extends StatefulWidget {
  const walkthrough2({super.key});

  @override
  State<walkthrough2> createState() => _walkthrough2State();
}

class _walkthrough2State extends State<walkthrough2> {
  
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
                  ElevatedButton (
                    child: Text('Next'),
                     style: ElevatedButton.styleFrom(shape: StadiumBorder() , ),
                    onPressed : (){
                      Navigator.push(context , MaterialPageRoute(builder:(context) => const walkthrough3()));
                    }

                  )
                  
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
