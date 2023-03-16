// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:playeon/splashscreen/LoginScreen.dart';
import 'package:playeon/widgets/style.dart';

import '../widgets/common.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // void initState() {
  //   Future.delayed(Duration(seconds: 3)).then((value) =>
  //       Navigator.pushReplacement(
  //           context,
  //           SwipeLeftAnimationRoute(
  //               milliseconds: 300, widget: SignupScreen())));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/icons/ic_login_rect1.png"),
          ),
          Positioned.fill(
            child: Image.asset("assets/icons/ic_login_rectg2.png"),
          ),
          Positioned.fill(
            child: Image.asset("assets/icons/ic_login_rect2.png"),
          ),
          
          Positioned.fill(
            child: Image.asset("assets/images/img__login_bg.png"),
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Row(
          //       children: [
          //         VariableText(
          //           text: "Login",
          //           fontcolor: primaryColorB,
          //           fontsize: size.height * 0.015,
          //         )
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         TextFormField(
          //           decoration: InputDecoration(
          //               hintText: "Email",
          //               fillColor: Color(0xffF8F9FA),
          //               filled: true,
          //               prefixIcon: Icon(
          //                 Icons.alternate_email,
          //                 color: Color(0xff32F48),
          //               ),
          //               focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(
          //                   color: Color(0xffE4E7EB),
          //                 ),
          //               ),
          //               enabledBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(
          //                   color: Color(0xffE4E7EB),
          //                 ),
          //               )),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
