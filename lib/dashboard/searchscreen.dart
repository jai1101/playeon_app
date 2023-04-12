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
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyButton(
                        btnHeight: size.height * 0.05,
                        btnWidth: size.width * 0.4,
                        borderColor: primaryColorW,
                        btnColor: primaryColor1.withOpacity(0.2),
                        btnRadius: 200,
                        btnTxt: "Next",
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
          )

        ],

        
      ),
      ),
    );
  }
}
