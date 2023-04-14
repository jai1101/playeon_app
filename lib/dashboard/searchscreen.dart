import 'package:flutter/material.dart';
import 'package:playeon/widgets/style.dart';

import '../widgets/common.dart';

class searchscreen extends StatefulWidget {
  const searchscreen({super.key});

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                hintText: "Search Here",
                suffix: const Icon(Icons.search),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(),
                )),
          )
          ,
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 150 , horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyButton(
                              btnHeight: size.height * 0.05,
                              btnWidth: size.width * 0.2,
                              borderColor: primaryColorW,
                              btnColor: primaryColor1.withOpacity(0.2),
                              btnRadius: 200,
                              btnTxt: "Action",
                              weight: FontWeight.w300,
                              fontFamily: fontRegular,
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //            builder: (context) => const action(),
                              //            ));
                              // },
                            ),
                            SizedBox(width: 10,),
                            MyButton(
                              btnHeight: size.height * 0.05,
                              btnWidth: size.width * 0.2,
                              borderColor: primaryColorW,
                              btnColor: primaryColor1.withOpacity(0.2),
                              btnRadius: 200,
                              btnTxt: "Sci-Fi",
                              weight: FontWeight.w300,
                              fontFamily: fontRegular,
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //            builder: (context) => const action(),
                              //            ));
                              // },
                            ),
                            SizedBox(width: 10,),
                            MyButton(
                              btnHeight: size.height * 0.05,
                              btnWidth: size.width * 0.2,
                              borderColor: primaryColorW,
                              btnColor: primaryColor1.withOpacity(0.2),
                              btnRadius: 200,
                              btnTxt: "Anime",
                              weight: FontWeight.w300,
                              fontFamily: fontRegular,
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //            builder: (context) => const action(),
                              //            ));
                              // },
                            ),
                            SizedBox(width: 10,),
                            MyButton(
                              btnHeight: size.height * 0.05,
                              btnWidth: size.width * 0.2,
                              borderColor: primaryColorW,
                              btnColor: primaryColor1.withOpacity(0.2),
                              btnRadius: 200,
                              btnTxt: "Funny",
                              weight: FontWeight.w300,
                              fontFamily: fontRegular,
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //            builder: (context) => const action(),
                              //            ));
                              // },
                            )
                  ],
                ),
                SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton(
                              btnHeight: size.height * 0.05,
                              btnWidth: size.width * 0.25,
                              borderColor: primaryColorW,
                              btnColor: primaryColor1.withOpacity(0.2),
                              btnRadius: 200,
                              btnTxt: "Horror",
                              weight: FontWeight.w300,
                              fontFamily: fontRegular,
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //            builder: (context) => const action(),
                              //            ));
                              // },
                            ),
                            SizedBox(width: 10,),
                            MyButton(
                              btnHeight: size.height * 0.05,
                              btnWidth: size.width * 0.25,
                              borderColor: primaryColorW,
                              btnColor: primaryColor1.withOpacity(0.2),
                              btnRadius: 200,
                              btnTxt: "Romantic",
                              weight: FontWeight.w300,
                              
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //            builder: (context) => const action(),
                              //            ));
                              // },
                            ),
                            SizedBox(width: 10,),
                            MyButton(
                              btnHeight: size.height * 0.05,
                              btnWidth: size.width * 0.25,
                              borderColor: textColor1,
                              btnColor: textColor1,
                              btnRadius: 200,
                              btnTxt: "Adventure",
                              weight: FontWeight.w300,
                              
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //            builder: (context) => const action(),
                              //            ));
                              // },
                            ),
                           
                  ],
                ),
                SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton(
                              btnHeight: size.height * 0.05,
                              btnWidth: size.width * 0.25,
                              borderColor: primaryColorW,
                              btnColor: primaryColor1.withOpacity(0.2),
                              btnRadius: 200,
                              btnTxt: "Thriller",
                              weight: FontWeight.w300,
                              fontFamily: fontRegular,
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //            builder: (context) => const action(),
                              //            ));
                              // },
                            ),
                            SizedBox(width: 10,),
                            MyButton(
                              btnHeight: size.height * 0.05,
                              btnWidth: size.width * 0.25,
                              borderColor: primaryColorW,
                              btnColor: primaryColor1.withOpacity(0.2),
                              btnRadius: 200,
                              btnTxt: "Cartoon",
                              weight: FontWeight.w300,
                              fontFamily: fontRegular,
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //            builder: (context) => const action(),
                              //            ));
                              // },
                            ),
                            
                           
                  ],
                ),
                SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton(
                              btnHeight: size.height * 0.05,
                              btnWidth: size.width * 0.25,
                              borderColor: primaryColorW,
                              btnColor: primaryColor1.withOpacity(0.2),
                              btnRadius: 200,
                              btnTxt: "Movies",
                              weight: FontWeight.w300,
                              fontFamily: fontRegular,
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //            builder: (context) => const action(),
                              //            ));
                              // },
                            ),
                            
                  ],
                ),
              ],
            ),
          )

        ],

        
      ),
      ),
    );
  }
}
