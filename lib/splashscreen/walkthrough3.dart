// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'moviescreen.dart';




class WalkThrough3 extends StatefulWidget {
  const WalkThrough3({super.key});

  @override
  State<WalkThrough3> createState() => _WalkThrough3State();
}

// ignore: camel_case_types
class _WalkThrough3State extends State<WalkThrough3> {
  @override
  void initState() {
    //  Future.delayed(Duration(seconds: 4)).then((value) =>
    // Navigator.pushReplacement(context, SwipeLeftAnimationRoute(widget: WalkThroughScreen2()))
    //  );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
                width: size.width,
                height: size.height * 0.5,
                child: Image.asset(
                  "assets/images/img_w3bg.png",
                  fit: BoxFit.fill,
                )),
            
            Positioned.fill(
              child: Image.asset("assets/images/img_w3bitmap.png",fit: BoxFit.fill),
            ),
            
           
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/ic_w3txt.png", scale: 2.7),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/ic_w3play.png", scale: 2.7),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                          side:const BorderSide(width: 2,
                            color: Colors.white),
                            borderRadius: BorderRadius.circular(16)  
                            )
                          ),
                        
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MovieScreen()));
                        },
                        child: Text('Get Stared' , style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'arial',
                                color: Colors.white,), )),
                   
                  ],
                ),
              ],
            ),
          ],
        
        ),
      ),
    );
  }
}
