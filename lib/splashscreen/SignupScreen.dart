import 'package:flutter/material.dart';
import 'package:playeon/splashscreen/LoginScreen.dart';
import 'package:playeon/splashscreen/walkthrough.dart';

import '../widgets/common.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
   void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) =>
        Navigator.pushReplacement(
            context,
            SwipeLeftAnimationRoute(
                milliseconds: 300, widget: WalkThrough1())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}