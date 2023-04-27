import 'package:flutter/material.dart';
import 'package:playeon/dashboard/show_all.dart';
import 'package:playeon/widgets/style.dart';

import '../widgets/common.dart';

class searchscreen extends StatefulWidget {
  const searchscreen({super.key});

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  List<String> imagefor = [
    "assets/images/for1.png",
    "assets/images/for2.png",
    "assets/images/for3.png",
    "assets/images/for4.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];
  List<String> imagecontinue = [
    "assets/images/cont1.png",
    "assets/images/cont2.png",
    "assets/images/cont3.png",
    "assets/images/for4.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];
  List<String> Action = [
    "assets/images/act1.png",
    "assets/images/act2.png",
    "assets/images/act3.png",
    "assets/images/for4.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];

  List<String> trend = [
    "assets/images/trend1.png",
    "assets/images/trend2.png",
    "assets/images/trend3.png",
    "assets/images/trend4.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];
  List<String> Anime = [
    "assets/images/ani1.png",
    "assets/images/ani2.png",
    "assets/images/ani3.png",
    "assets/images/ani4.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];
  List<String> Sci = [
    "assets/images/sci1.png",
    "assets/images/sci2.png",
    "assets/images/sci3.png",
    "assets/images/sci4.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];

  List<String> kid = [
    "assets/images/kid1.png",
    "assets/images/kid2.png",
    "assets/images/kid3.png",
    "assets/images/kid4.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];
  List<String> rom = [
    "assets/images/rom1.png",
    "assets/images/rom2.png",
    "assets/images/rom3.png",
    "assets/images/rom4.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];
  List<String> Horror = [
    "assets/images/hor1.png",
    "assets/images/hor2.png",
    "assets/images/hor3.png",
    "assets/images/hor4.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];

  List<String> adv = [
    "assets/images/adv1.png",
    "assets/images/adv2.png",
    "assets/images/adv3.png",
    "assets/images/adv4.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];
  List<String> animat = [
    "assets/images/animat1.png",
    "assets/images/animat2.png",
    "assets/images/animat3.png",
    "assets/images/animat4.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: textColor1,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: textColor1.withOpacity(0),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Here',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyButton(
                            btnHeight: size.height * 0.05,
                            btnWidth: size.width * 0.2,
                            borderColor: textColor1,
                            btnColor: Colors.transparent,
                            btnRadius: 200,
                            btnTxt: "Action",
                            weight: FontWeight.w300,
                            fontFamily: fontRegular,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SwipeLeftAnimationRoute(
                                      milliseconds: 300,
                                      widget: ShowAllMovies(
                                          showList: Action,
                                          title: "Action list")));
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyButton(
                            btnHeight: size.height * 0.05,
                            btnWidth: size.width * 0.2,
                            borderColor: textColor1,
                            btnColor: Colors.transparent,
                            btnRadius: 200,
                            btnTxt: "Sci-Fi",
                            weight: FontWeight.w300,
                            fontFamily: fontRegular,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SwipeLeftAnimationRoute(
                                      milliseconds: 300,
                                      widget: ShowAllMovies(
                                          showList: Action,
                                          title: "Sci-Fi list")));
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyButton(
                            btnHeight: size.height * 0.05,
                            btnWidth: size.width * 0.2,
                            borderColor: textColor1,
                            btnColor: Colors.transparent,
                            btnRadius: 200,
                            btnTxt: "Anime",
                            weight: FontWeight.w300,
                            fontFamily: fontRegular,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SwipeLeftAnimationRoute(
                                      milliseconds: 300,
                                      widget: ShowAllMovies(
                                          showList: Action,
                                          title: "Anime list")));
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyButton(
                            btnHeight: size.height * 0.05,
                            btnWidth: size.width * 0.2,
                            borderColor: textColor1,
                            btnColor: Colors.transparent,
                            btnRadius: 200,
                            btnTxt: "Funny",
                            weight: FontWeight.w300,
                            fontFamily: fontRegular,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SwipeLeftAnimationRoute(
                                      milliseconds: 300,
                                      widget: ShowAllMovies(
                                          showList: Action,
                                          title: "Funny list")));
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButton(
                            btnHeight: size.height * 0.05,
                            btnWidth: size.width * 0.2,
                            borderColor: textColor1,
                            btnColor: Colors.transparent,
                            btnRadius: 200,
                            btnTxt: "Horror",
                            weight: FontWeight.w300,
                            fontFamily: fontRegular,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SwipeLeftAnimationRoute(
                                      milliseconds: 300,
                                      widget: ShowAllMovies(
                                          showList: Action,
                                          title: "Horror list")));
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyButton(
                            btnHeight: size.height * 0.05,
                            btnWidth: size.width * 0.2,
                            borderColor: textColor1,
                            btnColor: Colors.transparent,
                            btnRadius: 200,
                            btnTxt: "Romantic",
                            weight: FontWeight.w300,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SwipeLeftAnimationRoute(
                                      milliseconds: 300,
                                      widget: ShowAllMovies(
                                          showList: Action,
                                          title: "Romantic list")));
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyButton(
                            btnHeight: size.height * 0.05,
                            btnWidth: size.width * 0.2,
                            borderColor: textColor1,
                            btnColor: Colors.transparent,
                            btnRadius: 200,
                            btnTxt: "Adventure",
                            weight: FontWeight.w300,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SwipeLeftAnimationRoute(
                                      milliseconds: 300,
                                      widget: ShowAllMovies(
                                          showList: Action,
                                          title: "Adventure list")));
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButton(
                            btnHeight: size.height * 0.05,
                            btnWidth: size.width * 0.2,
                            borderColor: textColor1,
                            btnColor: Colors.transparent,
                            btnRadius: 200,
                            btnTxt: "Thriller",
                            weight: FontWeight.w300,
                            fontFamily: fontRegular,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SwipeLeftAnimationRoute(
                                      milliseconds: 300,
                                      widget: ShowAllMovies(
                                          showList: Action,
                                          title: "Thriller list")));
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyButton(
                            btnHeight: size.height * 0.05,
                            btnWidth: size.width * 0.2,
                            borderColor: textColor1,
                            btnColor: Colors.transparent,
                            btnRadius: 200,
                            btnTxt: "Cartoon",
                            weight: FontWeight.w300,
                            fontFamily: fontRegular,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SwipeLeftAnimationRoute(
                                      milliseconds: 300,
                                      widget: ShowAllMovies(
                                          showList: Action,
                                          title: "Cartoon list")));
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButton(
                            btnHeight: size.height * 0.05,
                            btnWidth: size.width * 0.2,
                            borderColor: textColor1,
                            btnColor: Colors.transparent,
                            btnRadius: 200,
                            btnTxt: "Movies",
                            weight: FontWeight.w300,
                            fontFamily: fontRegular,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SwipeLeftAnimationRoute(
                                      milliseconds: 300,
                                      widget: ShowAllMovies(
                                          showList: Action,
                                          title: "Movies list")));
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
