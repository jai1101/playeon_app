import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:playeon/dashboard/local_preference_controller.dart';
import 'package:playeon/main_screen.dart';
import 'package:playeon/widgets/style.dart';
import '../widgets/common.dart';
import 'SignupScreen.dart';
import 'api_controller.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isValid = false;
  bool isLoading = false;
  setLoading(bool loading) {
    setState(() {
      isLoading = loading;
    });
  }

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
    setLoading(true);
    if (validate()) {
      var response = await ApiController()
          .loginUser(usernameController.text, passwordController.text);
      print("Get $response");
      if (response['status']) {
        setLoading(false);
        String token = response['msg'];
        // Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
        Map<String, dynamic> decodedToken = JwtDecoder.decode(
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOnsibmFtZSI6IkpvaG4gRG9lIiwiZW1haWwiOiJqb2huZG8xMmVAZXhhbXBsZS5jb20iLCJwYXNzd29yZCI6IiQyYSQxMCR5bjRIeHdYcnRRYlBkNmhkRUtFVnBlSW85ZjIyNDJyQ0poMWxnMUlSL3lkRlQ2VjlRZk9GTyIsInVzZXJuYW1lIjoiam9oMTNuZG9lIiwicGhvbmVOdW1iZXIiOiIxMjM0NTY3ODkwIiwiY291bnRyeSI6IlVTIiwicGxhbiI6IkJhc2ljIiwicGF5bWVudE1ldGhvZCI6InZvdWNoZXIiLCJyb2xlIjoidXNlciIsInByb2ZpbGVQaWN0dXJlIjoiaHR0cHM6Ly9wbGF5ZW9uLWFzc2VzdC5zMy5hcC1zb3V0aC0xLmFtYXpvbmF3cy5jb20vZGVmYXVsdGljb24ucG5nIiwidm91Y2hlckV4cGlyeURhdGUiOiIyMDIzLTA2LTIyVDA1OjIxOjU2LjE3MFoiLCJpc0xvZ2dlZEluIjp0cnVlLCJCZG9JZCI6IjEyMzQ1NiIsIl9pZCI6IjY0NmM0ZDc0ZTU5NGEzNzRhN2IxNDAxYiIsImNyZWF0ZWRBdCI6IjIwMjMtMDUtMjNUMDU6MjE6NTYuMjUwWiIsInVwZGF0ZWRBdCI6IjIwMjMtMDUtMjNUMDU6MjE6NTYuMjUwWiIsIl9fdiI6MH0sImlhdCI6MTY4NDgxOTMxNiwiZXhwIjoxNzE2MzU1MzE2fQ.n5f3GYe3sr05UmoeiPh_2kE2zXFHPxsLcskv9OZFVKc");
        print(decodedToken);
        print(decodedToken["name"]);
        print(token);
        LocalPreference prefs = LocalPreference();
        await prefs.setUserToken(token);
        Navigator.pushReplacement(context,
            SwipeLeftAnimationRoute(milliseconds: 200, widget: MainScreen()));
      } else {
        setLoading(false);
        Fluttertoast.showToast(
            msg: response['msg'], toastLength: Toast.LENGTH_SHORT);
      }
    }
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
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
                      vertical: size.height * 0.016,
                      horizontal: size.width * 0.1),
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
                        btnColor: fillColor2,
                        btnRadius: 10,
                        borderColor: borderColor,
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
        ),
        if (isLoading) ProcessLoadingLight()
      ],
    );
  }
}
