// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:playeon/splashscreen/WalkThrough3.dart';

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
            SizedBox(
                width: size.width,
                height: size.height * 0.5,
                child: Image.asset(
                  "assets/images/img_w2bg.png",
                  fit: BoxFit.fill,
                )),
            Positioned.fill(
              child: Image.asset(
                "assets/images/img_w2bitmap.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned.fill(
              child: Image.asset(
                "assets/icons/ic_w2rect.png",
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
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 2, color: Colors.white),
                                borderRadius: BorderRadius.circular(16))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WalkThrough3()));
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'arial',
                            color: Colors.white,
                          ),
                        )),
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
