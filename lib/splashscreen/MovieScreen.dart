// ignore_for_file: file_names, prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:playeon/splashscreen/AllMovies.dart';
import 'package:playeon/widgets/style.dart';

import 'CustomNavBar.dart';
import 'Now.dart';
import 'Popular.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "MOVIES",
                  style: TextStyle(
                    fontFamily: 'SFProDisplay-Bold',
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              SizedBox(height: 30),
              AllMovies(),
              SizedBox(height: 40),
              NowMovies(),
              SizedBox(height: 40),
              PopularMovies(),
            ],
          ),

          
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
