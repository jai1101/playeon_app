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
            padding: const EdgeInsets.only(top: 20.0 , left: 15),       
            child: Container(
              child: Column(children: [
                Row(
                  children: [
                    Expanded(                                         
                        child: VariableText(
                      text: "MOVIES",
                      fontcolor: primaryColorW,
                      fontsize: size.height * 0.04,
                      fontFamily: fontMedium,
                      weight: FontWeight.w500,
                    )),

                     Expanded(
                        child : IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),)
                  ],
                ),
                
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
