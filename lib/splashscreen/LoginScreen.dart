// ignore: duplicate_ignore
// ignore: file_names

// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors, file_names

import 'package:flutter/material.dart' ;
import 'package:playeon/widgets/style.dart';

import '../widgets/common.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  
  // Future<void> login(String email , password) async {
  //   try{
          
  //           Response response = await post(
  //            Uri,parse("url_api"),
  //         //   body:{
  //         //               "email" : email,
  //         //               "pasword" : password
  //         //   }
  //          );
  //          if(response.statusCode == 200){
  //           print("account created Successfully");
  //          }
  //          else{
  //           print("failed");
  //          }
  //   }
  //   catch(e){
  //     print(e.toString());
  //   }
  // }
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
     appBar: AppBar(
      title: Text("log in"),
     ),
     body: SafeArea(
       child: Container( 
         
         decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/icons/ic_login_rect1.png"),
                    fit: BoxFit.cover
        ),
         ),
        child: Stack(
          children: [
             Positioned.fill(child: Image.asset("assets/icons/ic_login_rect2g.png",fit: BoxFit.fill,)),
               Positioned.fill(child: Image.asset("assets/images/img_login_bg.png",fit: BoxFit.fill,)),
                 Positioned.fill(child: Image.asset("assets/icons/ic_login_rect2.png",fit: BoxFit.fill,)),
                 
            Padding(
              padding: EdgeInsets.symmetric(vertical:size.height*0.016,horizontal:size.width*0.054),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text("Login" , ),
                TextFormField(
                  controller: usernameController,
                 
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.white)
                   ),
                )
                ,
                SizedBox(height: 20,),
               
                 TextFormField(
                  controller: passwordController,
                 
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white)
                   ),
                ),
                 SizedBox(height: 20,),
                  
                  MyButton(
                    btnHeight: size.height*0.055,
                    btnWidth: size.width,
                    btnTxt: "Login",
                    btnColor: Colors.green,
                    btnRadius: 2,
                   borderColor:Colors.green,
                   txtColor:primaryColorB ,
                   onTap: (){
            
                   },
                  ),
                  SizedBox(height: size.height*0.01,),
                 
                // GestureDetector (
                //   // onTap: () => {
                //   //   login(emailController.text.toString(), passwordController.text.toString());
                //   // },
                //    child: Container(
                //     height: 50,
                //    decoration: BoxDecoration(color: Colors.green ,
                //          ),
                //    child: Center(child: Text("Login")),
                //    ),
                //  ),
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " Don't have an accont? ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik',
                            color: Colors.grey),
                      ),
                        GestureDetector(
                          onTap: () {
                           Navigator.push(context,SwipeLeftAnimationRoute(milliseconds: 200,widget: SignupScreen()));
                          },
                          child: Text(
                            "Create an Account",
                            
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Rubik',
                                color: Colors.grey,),
                          ),
                        ),
                        
                    ],
                  ),
               ],
               ),
            ),
          ],
        ),
       ),
     ),
                          );
  }
  
  
}
