import 'package:flutter/material.dart';
import 'package:playeon/splashscreen/LoginScreen.dart';
import 'package:playeon/splashscreen/walkthrough.dart';
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
        Navigator.pushReplacement(
            context,
            SwipeLeftAnimationRoute(
                milliseconds: 300, widget: LoginScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/img_spbg.png"),
          ),
          Positioned.fill(
            child: Image.asset("assets/icons/ic_spfilter.png"),
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
            ],
          ),
        ],
      ),
    );
  }
}
