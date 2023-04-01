import 'package:flutter/material.dart';
import 'package:playeon/dashboard/home_screen.dart';

import '../widgets/common.dart';
import '../widgets/style.dart';

class TrailScreen extends StatefulWidget {
  const TrailScreen({super.key});

  @override
  State<TrailScreen> createState() => _TrailScreenState();
}

class _TrailScreenState extends State<TrailScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
            child: Container(
              width: size.width,
              height: size.height * 0.3,
              color: Color.fromARGB(255, 23, 11, 11),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VariableText(
                      text: "Step 4 of 4",
                      fontcolor: textColorS,
                      fontsize: size.height * 0.018,
                      fontFamily: fontMedium,
                      weight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyButton(
                      btnHeight: size.height * 0.075,
                      btnWidth: size.width,
                      btnTxt: "Start Your 3 Days Trial",
                      btnColor: primaryColor1,
                      btnRadius: 2,
                      borderColor: Colors.green,
                      txtColor: Colors.white,
                      fontSize: 20,
                      onTap: () {
                        Navigator.push(
                            context,
                            SwipeLeftAnimationRoute(
                                milliseconds: 200, widget: HomeScreen()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
