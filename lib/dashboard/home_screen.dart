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
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                      child: VariableText(
                    text: "MOVIES",
                    fontcolor: primaryColorW,
                    fontsize: size.height * 0.08,
                    fontFamily: fontMedium,
                    weight: FontWeight.w500,
                  ))
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
