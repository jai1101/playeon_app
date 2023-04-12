import 'package:flutter/material.dart';
import 'package:playeon/dashboard/show_all.dart';
import 'package:playeon/widgets/common.dart';
import 'package:playeon/widgets/style.dart';

class HomeScreen extends StatefulWidget {
String? token;
 HomeScreen({super.key, this.token});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "assets/images/img_justice.png",
    "assets/images/img_rampage.png",
    "assets/images/img_spider.png",
    "assets/images/img_thor.png",
    "assets/images/img_hotel.png",
    "assets/images/img_hostile.png",
  ];
  
  void updateList (String value )
  {

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 15),
            child: Container(
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                        child: VariableText(
                      text: "MOVIES",
                      fontcolor: primaryColorW,
                      fontsize: size.height * 0.03,
                      fontFamily: fontMedium,
                      weight: FontWeight.w500,
                    )),
                  
                    IconButton(
                      onPressed: () {

              
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Container(
                  height: size.height * 0.24,
                  width: size.width,
                  child: Image.asset(
                    "assets/images/img_banner.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: VariableText(
                        text: "Now",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.02,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          SwipeLeftAnimationRoute(
                              milliseconds: 300,
                              widget: ShowAllMovies(
                                  showList: images, title: "Now list"))),
                      child: Row(
                        children: [
                          VariableText(
                            text: "Vew All",
                            fontcolor: primaryColorW,
                            fontsize: size.height * 0.016,
                            fontFamily: fontMedium,
                            weight: FontWeight.w500,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: primaryColorW,
                            size: 17,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.30,
                  child: Row(
                    
                  children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: images.length,
                            shrinkWrap: false,
                            scrollDirection: Axis.horizontal,
                            physics: ScrollPhysics(),
                            itemBuilder: (_, index) {
                              return Container(
                                  padding: EdgeInsets.only(right: 11),
                                  child: Image.asset(images[index]));
                            }),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: VariableText(
                        text: "Popular",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.02,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          SwipeLeftAnimationRoute(
                              milliseconds: 300,
                              widget: ShowAllMovies(
                                  showList: images, title: "Popular list"))),
                      child: Row(
                        children: [
                          VariableText(
                            text: "Vew All",
                            fontcolor: primaryColorW,
                            fontsize: size.height * 0.016,
                            fontFamily: fontMedium,
                            weight: FontWeight.w500,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: primaryColorW,
                            size: 17,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.6,
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * verticalPadding),
                  child: Row(
                    children: [
                      Expanded(
                        child: GridView.builder(
                            itemCount: images.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: size.width * 0.01,
                               mainAxisSpacing: size.height * 0.011,
                              //childAspectRatio: 0.63,
                              childAspectRatio:
                                  size.width / (size.height * 0.30),
                            ),
                            shrinkWrap: false,
                            scrollDirection: Axis.horizontal,
                            physics: ScrollPhysics(),
                            itemBuilder: (_, index) {
                              return Container(
                                  child: Image.asset(images[index]));
                            }),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}