// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class NowMovies extends StatelessWidget {
  const NowMovies({super.key});

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
                "Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "View ALL",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
         Container(
                 margin: EdgeInsets.symmetric(vertical: 20),
                     height: 300,
                    child: ListView(
                    scrollDirection: Axis.horizontal,
                       children: [
                    Image.network("https://images.unsplash.com/photo-1679311994617-c3c9dbe09d01?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ],
              ),),
      
      
       
      ],
    );
  }
}
