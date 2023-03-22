import 'package:flutter/material.dart';
import 'now.dart';
import 'popular.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(212, 18, 18, 16),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network(
                      "https://images.unsplash.com/photo-1679311994617-c3c9dbe09d01?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                ],
              ),
            ),

                  

                  //  SizedBox(height: 40),
                  //  NowMovies(),
                  //  SizedBox(height: 40),
                  // PopularMovies(),
                ],
              ),
            ),
           
          ],
        ),
      ),
      // bottomNavigationBar: CustomNavBar(),
    );
  }
}
