// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:playeon/widgets/style.dart';

import '../widgets/common.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: Colors.black,
      body: SafeArea(
      
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0 , left: 15),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VariableText(
                        text: "Profile",
                        fontsize: size.height * 0.028,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                        max_lines: 2,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                    ]),
              ),
              Container(
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                     backgroundImage: AssetImage("assets/images/Avatar.png"),
                      backgroundColor: Colors.black,
                    ),
                    VariableText(
                        text: "Muhammad Bilal",
                        fontsize: size.height * 0.024,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                        max_lines: 2,
                      ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "3210",
                              style: Theme.of(context).textTheme.headline2 
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Likes",
                              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                             Text("44",
                                style: Theme.of(context)
                                    .textTheme.headline2
                             ) ,
                            SizedBox(
                              height: 5,
                            ),
                            Text("Watching",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text("1232",
                                style: Theme.of(context)
                                    .textTheme.headline2
                             ) ,
                            SizedBox(
                              height: 5,
                            ),
                            Text("Subscribtion",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
