import 'package:flutter/material.dart';
import '../widgets/common.dart';
import '../widgets/style.dart';
class Series extends StatefulWidget {
  const Series({super.key});

  @override
State<Series> createState() => _SeriesState();
}
class _SeriesState extends State<Series> {
   
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
    return   SafeArea(
        child: Scaffold(
    backgroundColor: backgroundColor,
      body: Stack(children: [
        Image.asset(
          "assets/images/about_img.png",
          height: 350,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
              ), ]),
            ),
            SizedBox(height: 280,),
             Padding(
               padding: const EdgeInsets.only( left: 20),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   VariableText(
                              text: "All Series ",
                              fontsize: size.height * 0.020,
                              fontcolor: textColor1,
                              weight: FontWeight.w500,
                              fontFamily: fontRegular,
                              underlined: true,
                              textAlign: TextAlign.left,
                            ),  ],
               ),
             ),
            Padding(
              padding: EdgeInsets.only(left: 10,),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    

                    Container(
                      width: size.width * 0.95,
                      height: size.height * 0.70,
                      padding: EdgeInsets.all(10),
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                             Container(
                          width: size.width,
                          height: size.height * 0.6,
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * verticalPadding),
                          child: Column(
                            children: [
                              Expanded(
                                child: GridView.builder(
                                    itemCount: images.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      crossAxisSpacing: size.width * 0.06,
                                      mainAxisSpacing: size.height * 0.020,
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
                            ],
                          ),
                        ),
                      ],

              ),
        )],
      ),
        )

                    ],
              ),
        ]),
        ),
    );


                                 
                        

    
  }
}

  