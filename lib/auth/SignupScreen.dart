// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:playeon/auth/login_screen.dart';

import 'package:playeon/walkscreen/walkthrough.dart';
import 'package:playeon/widgets/style.dart';

import '../widgets/common.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: primaryColorB,
            height: size.height,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.08, horizontal: size.width * 0.1),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VariableText(
                      text: "Welcome!",
                      fontsize: size.height * 0.040,
                      fontFamily: fontBold,
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    VariableText(
                      text: "It only takes a minute",
                      fontsize: size.height * 0.016,
                      fontFamily: fontMedium,
                      weight: FontWeight.w500,
                      max_lines: 2,
                    ),

                    //!Name
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                      cont: nameController,
                      hintTxt: "Name",
                    ),

                    //!UserName
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                      cont: usernameController,
                      hintTxt: "Username",
                    ),
                    //!User Email
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                      cont: emailController,
                      hintTxt: "Email",
                    ),

                    //!User Password
                    SizedBox(
                      height: size.height * 0.01,
                    ),

                    CustomPasswordField(
                      cont: passwordController,
                      hintTxt: "Password",
                    ),
                    //!User Number
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    CustomTextField(
                      cont: nameController,
                      hintTxt: "Number",
                      inputType: TextInputType.number,
                    ),
                    CustomDropDown(
                      hintTxt: "Choose Your City",
                      list: ["Karachi", "Hydrabad", "Sukkur", "MirpureKhas"],
                    ),

                    //!User Refereal Code
                    CustomTextField(
                      cont: codeController,
                      hintTxt: "Enter Your Referal Code",
                    ),

                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    MyButton(
                      btnHeight: size.height * 0.055,
                      btnWidth: size.width,
                      btnTxt: "Sign Up",
                      btnColor: primaryColor1,
                      btnRadius: 2,
                      borderColor: Colors.green,
                      txtColor: Colors.white,
                      fontSize: 20,
                      onTap: () {
                        Navigator.push(
                            context,
                            SwipeLeftAnimationRoute(
                                milliseconds: 200, widget: LoginScreen()));
                      },
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
