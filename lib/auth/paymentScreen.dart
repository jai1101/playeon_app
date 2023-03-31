import 'package:flutter/material.dart';
import 'package:playeon/auth/payfast.dart';
import 'package:playeon/auth/trail.dart';
import 'package:playeon/auth/vochercode.dart';

import '../widgets/common.dart';
import '../widgets/style.dart';

class paymentScreen extends StatelessWidget {
  const paymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: 
      
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Center(
               child: VariableText(
                    text: "Step 3 of 4",
                    fontcolor: textColorS,
                    fontsize: size.height * 0.024,
                    fontFamily: fontMedium,
                    weight: FontWeight.w500,
                    ),
             ),
              SizedBox(height: 8,),
            VariableText(
              text: "Set up your payment" ,
              fontsize: size.height *0.040 ,
              fontFamily: fontBold,
              weight: FontWeight.w700,
              max_lines: 2,
            ),
            SizedBox(height: 8,),
      
            VariableText(
              text: "Your membership starts as soon as you set up payment.",
              fontFamily: fontMedium ,
              fontsize: size.height* 0.024,
              weight: FontWeight.w500,
              max_lines: 3,
            ),
             SizedBox(height: 8,),
      
            VariableText(
              text: "No commitments.",
              fontFamily: fontMedium ,
              fontsize: size.height* 0.024,
              weight: FontWeight.w500,
            ),
            SizedBox(height: 80,),

             Directionality(
          textDirection: TextDirection.rtl,
           child: OutlinedButton.icon(
           icon: Icon(Icons.shopping_cart),
            label: Text("Free Three Days Subscription"),
            style: OutlinedButton.styleFrom(
             fixedSize: Size(320, 60),
              primary:  Colors.grey,
             alignment: Alignment.centerLeft,
            textStyle: TextStyle(
              fontSize: 16, 
            ),
              side: BorderSide(
                color: primaryColor1,
              ),
            ),
            onPressed: () {
               Navigator.push(
                              context,
                              SwipeLeftAnimationRoute(
                                  milliseconds: 200, widget: TrailScreen()));
            },
                 ),
         ),
         SizedBox(height: 10,),
         Directionality(
          textDirection: TextDirection.rtl,
           child: OutlinedButton.icon(
           icon: Icon(Icons.shopping_cart),
            label: Text("Card or JazzCash"),
            style: OutlinedButton.styleFrom(
             fixedSize: Size(320, 60),
              primary:  Colors.grey,
               alignment: Alignment.centerLeft,
            textStyle: TextStyle(
              fontSize: 16, 
            ),
              side: BorderSide(
                color: primaryColor1,
              ),
            ),
            onPressed: () {
               Navigator.push(
                              context,
                              SwipeLeftAnimationRoute(
                                  milliseconds: 200, widget: PayFast()));
            },
                 ),
         ),
 
        
         SizedBox(height: 10,),
         Directionality(
          textDirection: TextDirection.rtl,
           child: OutlinedButton.icon(
           icon: Icon(Icons.shopping_cart),
            label: Text("Voucher Code"),
            style: OutlinedButton.styleFrom(
             fixedSize: Size(320, 60),
              primary:  Colors.grey,
              alignment: Alignment.centerLeft,
            textStyle: TextStyle(
              fontSize: 16, 
            ),
              side: BorderSide(
                color: primaryColor1,
              ),
            ),
            onPressed: () {
               Navigator.push(
                              context,
                              SwipeLeftAnimationRoute(
                                  milliseconds: 200, widget: VoucherCode()));
            },
                 ),
         ),
           

          ],),
      )),
    );
  }
}