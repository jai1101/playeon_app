// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color(0xFF292b37),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Icon(
              Icons.web,
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "categoryPage");
            },
            child: Icon(
              Icons.movie,
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.home,
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.explore,
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.person,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
