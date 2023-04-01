import 'package:flutter/material.dart';
import 'package:playeon/auth/paymentScreen.dart';
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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VariableText(
              text: "Choose monthly subscription package",
              fontsize: size.height * 0.040,
              fontFamily: fontBold,
              weight: FontWeight.w700,
              max_lines: 2,
            ),
            SizedBox(
              height: 8,
            ),
            VariableText(
              text: "Watch all you want.",
              fontFamily: fontMedium,
              fontsize: size.height * 0.024,
              weight: FontWeight.w500,
            ),
            SizedBox(
              height: 8,
            ),
            VariableText(
              text: "Recommendations just for you.",
              fontFamily: fontMedium,
              fontsize: size.height * 0.024,
              weight: FontWeight.w500,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      VariableText(
                        text: "Monthly Subscription",
                        fontcolor: textColorS,
                        fontsize: size.height * 0.018,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      VariableText(
                        text: "Rs 100",
                        fontcolor: textColorS,
                        fontsize: size.height * 0.018,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: textColor5,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      VariableText(
                        text: "Video Quality",
                        fontcolor: textColorS,
                        fontsize: size.height * 0.018,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      VariableText(
                        text: "HD movies",
                        fontcolor: textColorS,
                        fontsize: size.height * 0.018,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: textColor5,
              thickness: 2,
            ),
            SizedBox(
              height: 50,
            ),
            MyButton(
              btnHeight: size.height * 0.055,
              btnWidth: size.width,
              btnTxt: "NEXT",
              btnColor: primaryColor1,
              btnRadius: 25,
              borderColor: Colors.green,
              txtColor: Colors.white,
              fontSize: 20,
              onTap: () {
                Navigator.push(
                    context,
                    SwipeLeftAnimationRoute(
                        milliseconds: 200, widget: paymentScreen()));
              },
            ),
          ],
        ),
      )),
    );
  }
}
