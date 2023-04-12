// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:playeon/auth/payfast.dart';
import 'package:playeon/auth/trail.dart';
import 'package:playeon/auth/user_model.dart';
import 'package:playeon/auth/vochercode.dart';
import '../widgets/common.dart';
import '../widgets/style.dart';
import 'api_controller.dart';

class paymentScreen extends StatefulWidget {
  UserModel? userData;
  paymentScreen({super.key, this.userData});

  @override
  State<paymentScreen> createState() => _paymentScreenState();
}

class _paymentScreenState extends State<paymentScreen> {
  createTrial() async {
    var response = await ApiController().trailUserCreate(widget.userData!);
    print(response);

    if (response == "200") {
      Navigator.push(context,
          SwipeLeftAnimationRoute(milliseconds: 200, widget: TrailScreen()));
    } else {
      Fluttertoast.showToast(msg: response, toastLength: Toast.LENGTH_SHORT);
    }
  }

 signupUser() async {
    var getToken = await ApiController().gettokenCreate();
    print(getToken);
    if (getToken['status']) {
      String accestoken = getToken['data']['ACCESS_TOKEN'];
      String date = getToken['data']['GENERATED_DATE_TIME'];
      print(date);
      var response =
          await ApiController().userCreate(widget.userData!, accestoken, date);

      if (response == "200") {
        Navigator.push(context,
            SwipeLeftAnimationRoute(milliseconds: 200, widget: PayFast()));
      } else {
        Fluttertoast.showToast(msg: response, toastLength: Toast.LENGTH_SHORT);
      }
    }
  }
  //! voucher user create

  userCreatetoVoucher() async {
    var response = await ApiController().voucherUserCreate(widget.userData!);
    print(response);

    if (response == "200") {
      Navigator.push(context,
          SwipeLeftAnimationRoute(milliseconds: 200, widget: VoucherCode()));
    } else {
      Fluttertoast.showToast(msg: response, toastLength: Toast.LENGTH_SHORT);
    }
  
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
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
            SizedBox(
              height: 8,
            ),
            VariableText(
              text: "Set up your payment",
              fontsize: size.height * 0.040,
              fontFamily: fontBold,
              weight: FontWeight.w700,
              max_lines: 2,
            ),
            SizedBox(
              height: 8,
            ),
            VariableText(
              text: "Your membership starts as soon as you set up payment.",
              fontFamily: fontMedium,
              fontsize: size.height * 0.024,
              weight: FontWeight.w500,
              max_lines: 3,
            ),
            SizedBox(
              height: 8,
            ),
            VariableText(
              text: "No commitments.",
              fontFamily: fontMedium,
              fontsize: size.height * 0.024,
              weight: FontWeight.w500,
            ),
            SizedBox(
              height: 80,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: OutlinedButton.icon(
                icon: Icon(Icons.shopping_cart),
                label: Text("Free Three Days Subscription"),
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(320, 60),
                  primary: textColor1,
                  alignment: Alignment.centerLeft,
                  textStyle: TextStyle(
                    fontSize: 16,
                  ),
                  side: BorderSide(
                    color: textColor1,
                  ),
                ),
                onPressed: () {
                  createTrial();
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: OutlinedButton.icon(
                icon: Icon(Icons.shopping_cart),
                label: Text("Card or JazzCash"),
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(320, 60),
                  primary: textColor1,
                  alignment: Alignment.centerLeft,
                  textStyle: TextStyle(
                    fontSize: 16,
                  ),
                  side: BorderSide(
                    color: textColor1,
                  ),
                ),
                onPressed: () {
                  signupUser();
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: OutlinedButton.icon(
                icon: Icon(Icons.shopping_cart),
                label: Text("Voucher Code"),
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(320, 60),
                  primary: textColor1,
                  alignment: Alignment.centerLeft,
                  textStyle: TextStyle(
                    fontSize: 16,
                  ),
                  side: BorderSide(
                    color: textColor1,
                  ),
                ),
                onPressed: () {
                  userCreatetoVoucher();
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
