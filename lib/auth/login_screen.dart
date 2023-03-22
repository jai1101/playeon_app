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

  // Future<void> login(String email , password) async {
  //   try{

  //           Response response = await post(
  //            Uri,parse("url_api"),
  //         //   body:{
  //         //               "email" : email,
  //         //               "pasword" : password
  //         //   }
  //          );
  //          if(response.statusCode == 200){
  //           print("account created Successfully");
  //          }
  //          else{
  //           print("failed");
  //          }
  //   }
  //   catch(e){
  //     print(e.toString());
  //   }
  // }
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/icons/ic_login_rect1.png"),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              // Positioned.fill(
              //     child: Image.asset(
              //   "assets/icons/ic_login_rect2g.png",
              //   fit: BoxFit.fill,
              // )),
              Positioned.fill(
                  child: Image.asset(
                "assets/images/img_login_bg.png",
                fit: BoxFit.fill,
              )),
              // Positioned.fill(
              //     child: Image.asset(
              //   "assets/icons/ic_login_rect2.png",
              //   fit: BoxFit.fill,
              // )),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.016,
                    horizontal: size.width * 0.054),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Log In",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabled: true,
                        // filled: true,
                        fillColor: primaryColorB,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabled: true,
                        filled: true,
                        fillColor: primaryColorB,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    MyButton(
                      btnHeight: size.height * 0.055,
                      btnWidth: size.width,
                      btnTxt: "Login",
                      btnColor: Colors.green,
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