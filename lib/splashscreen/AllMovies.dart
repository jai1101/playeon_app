// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AllMovies extends StatelessWidget {
  const AllMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " Moveies",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            for (int i = 1; i < 4; i++)
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "images/img_allHotview$i.png",
                    height: 180,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              )
          ]),
        )
      ],
    );
  }
}
