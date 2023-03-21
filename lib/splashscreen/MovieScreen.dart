// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:playeon/splashscreen/allmovies.dart';
import 'package:playeon/widgets/style.dart';

import 'customnavbar.dart';

import 'now.dart';
import 'popular.dart';
import 'now.dart';
class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(212, 18, 18, 16),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "MOVIES",
                style: TextStyle(
                  fontFamily: 'SFProDisplay-Bold',
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
             
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search , color: Colors.white  ,),
               
              ),
             
             
              //  SizedBox(height: 40),
              //  NowMovies(),
              //  SizedBox(height: 40),
              // PopularMovies(),
            ],
          ),
        ),
      
         body :  Container(
                 margin: EdgeInsets.symmetric(vertical: 20),
                     height: 300,
                    child: ListView(
                    scrollDirection: Axis.horizontal,
                       children: [
                    Image.network("https://images.unsplash.com/photo-1679311994617-c3c9dbe09d01?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ],
              ),),
      
      ),
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}
