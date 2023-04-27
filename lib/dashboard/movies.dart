import 'package:flutter/material.dart';
import '../widgets/common.dart';
import '../widgets/style.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  List<String> images = [
    "assets/images/act2.png",
    "assets/images/adv3.png",
    "assets/images/animat3.png",
    "assets/images/cont1.png",
    "assets/images/for3.png",
    "assets/images/rom3.png",
    "assets/images/trend1.png",
    "assets/images/trend4.png",
    "assets/images/cont2.png",
    "assets/images/act2.png",
    "assets/images/adv3.png",
    "assets/images/animat3.png",
    "assets/images/cont1.png",
    "assets/images/for3.png",
    "assets/images/rom3.png",
    "assets/images/trend1.png",
    "assets/images/trend4.png",
    "assets/images/cont2.png",
    "assets/images/act2.png",
    "assets/images/adv3.png",
    "assets/images/animat3.png",
    "assets/images/cont1.png",
    "assets/images/for3.png",
    "assets/images/rom3.png",
    "assets/images/trend1.png",
    "assets/images/trend4.png",
    "assets/images/cont2.png",
  ];
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Image.asset(
                  "assets/images/about_img.png",
                  height: 350,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.arrow_back_ios,
                                      color: primaryColorW,
                                      size: 17,
                                    ),
                                    VariableText(
                                      text: "Back",
                                      fontcolor: primaryColorW,
                                      fontsize: size.height * 0.022,
                                      fontFamily: fontSemiBold,
                                      textAlign: TextAlign.start,
                                      weight: FontWeight.w500,
                                    ),
                                  ]),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 280,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          VariableText(
                            text: "All Movies ",
                            fontsize: size.height * 0.020,
                            fontcolor: textColor1,
                            weight: FontWeight.w500,
                            fontFamily: fontRegular,
                            underlined: true,
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Container(
                        width: size.width,
                        height: size.height * 0.5,
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * verticalPadding),
                        child: GridView.builder(
                            itemCount: images.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 6,
                              crossAxisSpacing: size.width * 0.03,
                              mainAxisSpacing: size.height * 0.015,
                              // childAspectRatio: 0.63,
                              childAspectRatio:
                                  size.width / (size.height * 0.9),
                            ),
                            shrinkWrap: false,
                            scrollDirection: Axis.vertical,
                            physics: ScrollPhysics(),
                            itemBuilder: (_, index) {
                              return Container(
                                  child: Image.asset(images[index]));
                            }),
                      ),
                    )
                  ],
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
