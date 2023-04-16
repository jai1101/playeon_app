import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:playeon/dashboard/home_screen.dart';
import 'package:playeon/dashboard/local_preference_controller.dart';
import 'package:playeon/main.dart';
import 'package:playeon/main_screen.dart';

import 'package:playeon/widgets/style.dart';
import '../widgets/common.dart';
import 'SignupScreen.dart';
import 'api_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isValid = false;
 validate() {
    if (usernameController.text.isNotEmpty) {
      if (passwordController.text.isNotEmpty) {
        isValid = true;
      } else {
        Fluttertoast.showToast(
            msg: "Plase Enter password",
            toastLength: Toast.LENGTH_SHORT); //password
      }
    } else {
      Fluttertoast.showToast(
          msg: "Plase enter Email", toastLength: Toast.LENGTH_SHORT);
    }

    return isValid;
  }

  loginUser() async {
    if (validate()) {
      var response = await ApiController()
          .loginUser(usernameController.text, passwordController.text);
      print("Get $response");
      if (response['status']) {
        String token = response['msg'];
        print(token);
        LocalPreference prefs = LocalPreference();
        await prefs.setUserToken(token);
        Navigator.push(
            context,
            SwipeLeftAnimationRoute(
                milliseconds: 200,
                widget: MainScreen(
                  
                )));
      } else {
        Fluttertoast.showToast(
            msg: response['msg'], toastLength: Toast.LENGTH_SHORT);
      }
    }
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
           
            Positioned.fill(
                child: Image.asset(
              "assets/images/login_img.png",
              fit: BoxFit.fill,
            )),
             Positioned.fill(
                child: Image.asset(
              "assets/images/login_img2.png",
              fit: BoxFit.cover,
            )),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.016, horizontal: size.width * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          VariableText(
                            text: "LOGIN NOW",
                            fontcolor: textColor1,
                            fontsize: size.height * 0.032,
                            fontFamily: fontExtraBold,
                            weight: FontWeight.w700,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          VariableText(
                            text: "And Enjoy Endless",
                            fontcolor: textColor1,
                            fontsize: size.height * 0.016,
                            fontFamily: fontExtraBold,
                            weight: FontWeight.w500,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  //!User Name
                  CustomTextField(
                    cont: usernameController,
                    hintTxt: "Enter Your Email",
                    fill: true,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  //!password
                  CustomPasswordField(
                    cont: passwordController,
                    hintTxt: "Enter Your Password",
                    fill: true,
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
MyButton(
                    btnHeight: size.height * 0.055,
                    btnWidth: size.width,
                    btnTxt: "Login",
                    btnColor: textColor1,
                    btnRadius: 10,
                    borderColor: textColor1,
                    txtColor: textColor2,
                    fontSize: 20,
                    onTap: () {
                     loginUser();
                      
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      VariableText(
                        text: "Don't have an account? ",
                        fontsize: size.height * 0.016,
                        fontcolor: textColor1,
                        weight: FontWeight.w400,
                        fontFamily: fontRegular,
                        underlined: true,
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
                          fontcolor: textColor1,
                          weight: FontWeight.w600,
                          fontFamily: fontSemiBold,
                          underlined: true,
                        ),
                      ),

                    ],
                  ),
                   
                  
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
