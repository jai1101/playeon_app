// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'customnavbar.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
              opacity: 0.4,
              child: Image.asset(
                "images/cover.jpg",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                        )
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "this is the simple description of the movie",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.justify,
                        )
                      ]),
                ),
              ],
            )),
          )
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
