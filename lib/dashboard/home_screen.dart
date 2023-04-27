// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:playeon/auth/api_controller.dart';
import 'package:playeon/dashboard/movies.dart';
import 'package:playeon/dashboard/show_all.dart';
import 'package:playeon/widgets/common.dart';
import 'package:playeon/widgets/style.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'local_preference_controller.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List itemImages = [Colors.green , Colors.purple , Colors.blue];
  int currentIndex = 0 ; 
  String? categoryController;
  List<String> categoryList = [
    "Action",
    "Trending now",
    "Anime",
    "Sci-Fi",
    "Kids Cartoon",
    "Romantic",
    "Horror",
    "Adventure",
    "Animated Movies"
  ];
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

  void updateList(String value) {}
  getMovies() async {
    LocalPreference prefs = LocalPreference();
    String token = await prefs.getUserToken();
    var response = await ApiController().getMovies(token);
    print(" form api $response");
  }

  @override
  void initState() {
    getMovies();

    super.initState();
  }

  List listItem = ["Item 1", "Item 2"];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 15),
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
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: textColor1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                MyButton(
                  btnHeight: size.height * 0.05,
                  btnWidth: size.width * 0.24,
                  borderColor: textColor5,
                  btnColor: textColor5,
                  btnRadius: 200,
                  btnTxt: "Movies",
                  fontSize: size.height * 0.020,
                  weight: FontWeight.w500,
                  fontFamily: fontRegular,
                  onTap: () {
                    Navigator.push(
                        context,
                        SwipeLeftAnimationRoute(
                            milliseconds: 200, widget: Movies()));
                  },
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                MyButton(
                  btnHeight: size.height * 0.05,
                  btnWidth: size.width * 0.24,
                  borderColor: textColor5,
                  btnColor: textColor5,
                  btnRadius: 200,
                  btnTxt: "Series",
                  fontSize: size.height * 0.020,
                  weight: FontWeight.w500,
                  fontFamily: fontRegular,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Movies()),
                    );
                  },
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Container(
                    width: size.width * 0.25,
                    height: size.width * 0.09,

                    //  color: textColor5 ,
                    child: InputDecorator(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: textColor5),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: StreamBuilder<Object>(
                                      stream: null,
                                      builder: (context, snapshot) {
                                        return VariableText(
                                          text: "Choose Your City",
                                          fontFamily: fontMedium,
                                          fontcolor: textColor1,
                                          fontsize: size.height * 0.016,
                                        );
                                      }),
                                ),
                                value: categoryController,
                                isExpanded: true,
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                },
                                onChanged: (String? value) {
                                  {
                                    setState(() {
                                      categoryController = value;
                                    });
                                  }
                                },
                                style: TextStyle(
                                    fontSize: size.height * 0.016,
                                    color: textColorH),
                                items: categoryList
                                    .map<DropdownMenuItem<String>>(
                                        (String item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        VariableText(
                                          text: item,
                                          fontsize: size.height * 0.016,
                                          fontcolor: Colors.black,
                                          fontFamily: fontMedium,
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList())))),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: CarouselSlider(items: [
                    for(int i = 0; i< itemImages.length; i++)
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 30),
                      decoration: BoxDecoration(
                        color : itemImages[i],
                        borderRadius: BorderRadius . circular(20),
                        boxShadow:[BoxShadow(
                        color: Colors.grey,
                        spreadRadius:2,
                        blurRadius : 8,
                        offset :Offset(4,4))
                  ]),
                  child : Text(
                    'Flutter Carousel Slider item ${i + 1}',
                  )
                    )
                    ],
                  options: CarouselOptions(
                    onPageChanged:(index , reason){
                      setState(() {
                        print(reason.toString());
                        currentIndex = index;

                      });
                    } ,
                    autoPlay: true 
                    ),
                ),
              
                 ),
                 Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  for(int i =0 ; i<itemImages.length ; i++)
                  Container(
                    height: 13,
                    width: 13,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: currentIndex == i? Colors.blue : Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1;
                          offset: offset: (2 ,2)
                        )
                      ]
                    ),
                  )
                 ],
                 )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "For You",
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
                              showList: imagefor, title: "For You"))),
                  child: Row(
                    children: [
                      VariableText(
                        text: "See All",
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
              height: size.height * 0.18,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: imagefor.length,
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Container(
                              padding: EdgeInsets.only(right: 1),
                              child: Image.asset(imagefor[index]));
                        }),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "Continue Watching For",
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
                              showList: imagecontinue,
                              title: " Continue Watching"))),
                  child: Row(
                    children: [
                      VariableText(
                        text: "See All",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.016,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                      const Icon(
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
              height: size.height * 0.18,
              padding:
                  EdgeInsets.symmetric(vertical: size.height * verticalPadding),
              child: Row(
                children: [
                  Expanded(
                    child: GridView.builder(
                        itemCount: imagecontinue.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          crossAxisSpacing: size.width * 0.011,
                          mainAxisSpacing: size.height * 0.0001,
                          //childAspectRatio: 0.63,
                          childAspectRatio: size.width / (size.height * 0.50),
                        ),
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Container(
                              child: Image.asset(imagecontinue[index]));
                        }),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "Action",
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
                              showList: Action, title: "Action Movies"))),
                  child: Row(
                    children: [
                      VariableText(
                        text: "See All",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.016,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                      const Icon(
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
              height: size.height * 0.18,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: Action.length,
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Container(
                              padding: EdgeInsets.only(right: 1),
                              child: Image.asset(Action[index]));
                        }),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "Trending Now",
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
                              showList: trend, title: "Now list"))),
                  child: Row(
                    children: [
                      VariableText(
                        text: "See All",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.016,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                      const Icon(
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
              height: size.height * 0.18,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: trend.length,
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Container(
                              padding: EdgeInsets.only(right: 1),
                              child: Image.asset(trend[index]));
                        }),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "Anime",
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
                              showList: Anime, title: "Now list"))),
                  child: Row(
                    children: [
                      VariableText(
                        text: "See All",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.016,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                      const Icon(
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
              height: size.height * 0.18,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: Anime.length,
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Container(
                              padding: EdgeInsets.only(right: 1),
                              child: Image.asset(Anime[index]));
                        }),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "Sci-Fi",
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
                              showList: Sci, title: "Sci_Fi Movies"))),
                  child: Row(
                    children: [
                      VariableText(
                        text: "See All",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.016,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                      const Icon(
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
              height: size.height * 0.18,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: Sci.length,
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Container(
                              padding: EdgeInsets.only(right: 1),
                              child: Image.asset(Sci[index]));
                        }),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "Kids Cartoon",
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
                          widget:
                              ShowAllMovies(showList: kid, title: "Cartoons"))),
                  child: Row(
                    children: [
                      VariableText(
                        text: "See All",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.016,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                      const Icon(
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
              height: size.height * 0.18,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: kid.length,
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Container(
                              padding: EdgeInsets.only(right: 1),
                              child: Image.asset(kid[index]));
                        }),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "Romantic",
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
                              showList: rom, title: "Romantic Movies"))),
                  child: Row(
                    children: [
                      VariableText(
                        text: "See All",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.016,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                      const Icon(
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
              height: size.height * 0.18,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: rom.length,
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Container(
                              padding: EdgeInsets.only(right: 1),
                              child: Image.asset(rom[index]));
                        }),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "Horror",
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
                              showList: Horror, title: "Horror Movies"))),
                  child: Row(
                    children: [
                      VariableText(
                        text: "See All",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.016,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                      const Icon(
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
              height: size.height * 0.18,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: Horror.length,
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Container(
                              padding: EdgeInsets.only(right: 1),
                              child: Image.asset(Horror[index]));
                        }),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "Adventure",
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
                              showList: adv, title: "Adventure Movies"))),
                  child: Row(
                    children: [
                      VariableText(
                        text: "See All",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.016,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                      const Icon(
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
              height: size.height * 0.18,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: adv.length,
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemBuilder: (_, index) {
                          return Container(
                              padding: EdgeInsets.only(right: 1),
                              child: Image.asset(adv[index]));
                        }),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: VariableText(
                    text: "Animated Movies",
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
                              showList: animat, title: "Animated Movies"))),
                  child: Row(
                    children: [
                      VariableText(
                        text: "See All",
                        fontcolor: primaryColorW,
                        fontsize: size.height * 0.016,
                        fontFamily: fontMedium,
                        weight: FontWeight.w500,
                      ),
                      const Icon(
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
          ]),
        ),
      ),
    );

    final List _source = [Colors.red , Colors.black , Colors.yellow];
  }
}
