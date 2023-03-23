import 'package:flutter/material.dart';
import 'package:playeon/walkscreen/walkthrough.dart';
import 'package:playeon/widgets/style.dart';

import '../widgets/common.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(
                "assets/images/img_bgthumnails.png",
                fit: BoxFit.cover,
              )),
              Positioned.fill(
                  child: Image.asset(
                "assets/images/img_blackbg.png",
                fit: BoxFit.fill,
              )),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.016,
                    horizontal: size.width * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        VariableText(
                          text: "Log in",
                          fontsize: size.height * 0.022,
                          fontFamily: fontExtraBold,
                          weight: FontWeight.w700,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    //!User Name
                    CustomTextField(
                      cont: usernameController,
                      hintTxt: "Username",
                      fill: true,
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    //!password
                    CustomTextField(
                      cont: usernameController,
                      hintTxt: "Password",
                      fill: true,
                      obscure: true,
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    MyButton(
                      btnHeight: size.height * 0.055,
                      btnWidth: size.width,
                      btnTxt: "Login",
                      btnColor: primaryColor1,
                      btnRadius: 2,
                      borderColor: Colors.green,
                      txtColor: Colors.white,
                      fontFamily: "Arial",
                      fontSize: 20,
                      onTap: () {
                        Navigator.push(
                            context,
                            SwipeLeftAnimationRoute(
                                milliseconds: 200, widget: WalkThrough1()));
                      },
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        VariableText(
                          text: "Don't have an account? ",
                          fontsize: size.height * 0.016,
                          fontcolor: textColorS,
                          weight: FontWeight.w400,
                          fontFamily: fontRegular,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                SwipeLeftAnimationRoute(
                                    milliseconds: 200,
                                    widget: const SignupScreen()));
                          },
                          child: VariableText(
                            text: "Create Now",
                            fontsize: size.height * 0.016,
                            fontcolor: primaryColor1,
                            weight: FontWeight.w600,
                            fontFamily: fontSemiBold,
                            underlined: true,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
