import 'package:flutter/material.dart';
import 'package:playeon/auth/login_screen.dart';
import 'package:playeon/dashboard/Introduction.dart';
import 'package:playeon/dashboard/review.dart';

import '../widgets/common.dart';
import '../widgets/style.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: primaryColorW,
                  size: 17,
                ),
                VariableText(
                  text: "Back",
                  fontcolor: primaryColorW,
                  fontsize: size.height * 0.022,
                  fontFamily: fontSemiBold,
                  textAlign: TextAlign.start,
                  weight: FontWeight.w500,
                ),
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            VariableText(
              text: "Setting",
              fontcolor: primaryColorW,
              fontsize: size.height * 0.022,
              fontFamily: fontSemiBold,
              textAlign: TextAlign.start,
              weight: FontWeight.w500,
            ),
            SizedBox(
              height: 10,
            ),

            buildAccountOption(context, 'Clear cache'),
            buildAccountOption(context, "Share the app"),
            buildAccountOption(context, 'Forget Password'),
            buildAccountOption(context, 'About'),
            SizedBox(
              height: 60,
            ),

            //   SizedBox(height: 60,),
            //    MyButton(
            //   btnHeight: size.height * 0.055,
            //   btnWidth: size.width,
            //   btnTxt: "About",
            //   btnColor: textColorS,
            //   btnRadius: 25,
            //   borderColor: textColor5,
            //   txtColor: Colors.black,
            //   fontSize: 20,
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         SwipeLeftAnimationRoute(
            //             milliseconds: 200, widget: Review()));
            //   },
            // ),

            MyButton(
              btnHeight: size.height * 0.055,
              btnWidth: size.width,
              btnTxt: "Sign Out",
              btnColor: textColorS,
              btnRadius: 25,
              borderColor: textColor5,
              txtColor: Colors.black,
              fontSize: 20,
              onTap: () {
                Navigator.push(
                    context,
                    SwipeLeftAnimationRoute(
                        milliseconds: 200, widget: LoginScreen()));
              },
            ),
          ]),
        ),
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showAboutDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(""),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 1"),
                    Text("Option 1"),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Close"),
                  )
                ],
              );
            });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: textColor5,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: textColor5,
          ),
        ]),
      ),
    );
  }
}
