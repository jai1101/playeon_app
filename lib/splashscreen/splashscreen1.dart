// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:playeon/auth/login_screen.dart';

import 'package:playeon/widgets/common.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) =>
        Navigator.pushReplacement(context,
            SwipeLeftAnimationRoute(milliseconds: 300, widget: LoginScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child:
                  Image.asset("assets/images/img_spbg.png", fit: BoxFit.fill),
            ),
            Positioned.fill(
              child:
                  Image.asset("assets/icons/ic_spfilter.png", fit: BoxFit.fill),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/ic_splogo.png", scale: 2.7),
                  ],
                ),
                SizedBox(
                  height: 70,
                  child: Text(
                    "Copyright © 2017",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.transparent,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
