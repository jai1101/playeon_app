import 'package:flutter/material.dart';
import 'package:playeon/widgets/common.dart';
import 'package:playeon/widgets/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15),
            child: Container(
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                        child: VariableText(
                      text: "MOVIES",
                      fontcolor: primaryColorW,
                      fontsize: size.height * 0.03,
                      fontFamily: fontMedium,
                      weight: FontWeight.w500,
                    )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Container(
                  height: size.height * 0.24,
                  width: size.width,
                  child: Image.asset(
                    "assets/images/img_banner.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: VariableText(
                        text: "Now",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.02,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                    ),
                    VariableText(
                      text: "Vew All",
                      fontcolor: primaryColorW,
                      fontsize: size.height * 0.016,
                      fontFamily: fontMedium,
                      weight: FontWeight.w500,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: primaryColorW,
                      size: 17,
                    )
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
