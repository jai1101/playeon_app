import 'package:flutter/material.dart';

class PopularMovies extends StatefulWidget {
  const PopularMovies({super.key});

  @override
  State<PopularMovies> createState() => _PopularMoviesState();
}

class _PopularMoviesState extends State<PopularMovies> {
  List<String> images = [
    "assets/images/img_war.png",
    "assets/images/img_war.png",
    "assets/images/img_war.png",
    "assets/images/img_war.png",
    "assets/images/img_war.png",
    "assets/images/img_war.png",
    "assets/images/img_war.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Popular",
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
    );
    SizedBox(
      height: 15,
    );
    body:
    Container(
      padding: EdgeInsets.all(12.0),
      child: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(images[index]);
        },
      ),
    );
  }
}
