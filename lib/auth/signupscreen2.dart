import 'dart:html';

import 'package:flutter/material.dart';
import 'package:playeon/widgets/common.dart';
import 'package:playeon/widgets/style.dart';

class SignupScreen2 extends StatefulWidget {
  const SignupScreen2({super.key});

  @override
  State<SignupScreen2> createState() => _SignupScreen2State();
}

class _SignupScreen2State extends State<SignupScreen2> {
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: 
      
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          VariableText(
            text: "Choose monthly subscription package" ,
            fontsize: size.height *0.040 ,
            fontFamily: fontBold,
            weight: FontWeight.w700,
          ),
          SizedBox(height: 3,),

          VariableText(
            text: "Watch all you want.",
            fontFamily: fontMedium ,
            fontsize: size.height* 0.016,
            weight: FontWeight.w500,
          )
        ],)),
    );
  }
}