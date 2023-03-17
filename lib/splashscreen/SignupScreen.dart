// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:playeon/splashscreen/WalkThrough2.dart';

import 'package:playeon/splashscreen/walkthrough.dart';

import '../widgets/common.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
   @override
    //  void initState() {
    // Future.delayed(Duration(seconds: 3)).then((value) =>
    //     Navigator.pushReplacement(
    //         context,
    //         SwipeLeftAnimationRoute(
    //             milliseconds: 300, widget: WalkThrough1())));
    // super.initState();
  // }
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
   TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
    TextEditingController numberController = TextEditingController();
     TextEditingController cityController = TextEditingController();
      TextEditingController codeController = TextEditingController();

  // void Signup(String name,username, email , password ,number , city ,code ){
  //   try{
          
  //          Response response = await post(
  //           Uri parse(url_api),
  //           body:{
  //             "name" : name,
  //             "username" : username,
  //                       "email" : email,
  //                       "pasword" : password,
  //                       "number ":number ,
  //                       "city" : city,
  //                       "code ": code ,
                        
                        

  //           }
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
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
     appBar: AppBar(
      title: Text("Sign up"),
     ),
   body: SafeArea(
     child: Container( 
      
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/icons/ic_signrect1.png"),
                    fit: BoxFit.cover
        ),
      ),
        child: Stack(
          children: [
             Positioned.fill(child: Image.asset("assets/icons/ic_signrect02.png",fit: BoxFit.fill,)),
               Positioned.fill(child: Image.asset("assets/icons/ic_signrect12.png",fit: BoxFit.fill,)),
                 Positioned.fill(child: Image.asset("assets/icons/ic_signrect22.png",fit: BoxFit.fill,)),
           Padding(
              padding: EdgeInsets.symmetric(vertical:size.height*0.016,horizontal:size.width*0.054),      
       child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        TextFormField(
          controller: nameController,
          decoration: InputDecoration(
            hintText: 'Name',
             hintStyle: TextStyle(color: Colors.white)
           ),
        )
        ,
         SizedBox(height: 20,),
         TextFormField(
                  controller: usernameController,
                 
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.white)
                   ),
                )
                ,
               
         SizedBox(height: 20,),
   
         SizedBox(height: 20,),
        TextFormField(
          controller: emailController,
          decoration: InputDecoration(
            hintText: 'Email',
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
        )
        ,
        SizedBox(height: 20,),
        TextFormField(
          controller: numberController,
          decoration: InputDecoration(
            hintText: 'Number',
             hintStyle: TextStyle(color: Colors.white)
           ),
        )
        ,
         SizedBox(height: 20,),
        TextFormField(
          controller: cityController,
          decoration: InputDecoration(
            hintText: 'Choose your City',
             hintStyle: TextStyle(color: Colors.white)
           ),
        )
        ,
        SizedBox(height: 20,),
        TextFormField(
          controller: codeController,
          decoration: InputDecoration(
            hintText: 'Enter Your Referal Code ',
             hintStyle: TextStyle(color: Colors.white)
           ),
        )
        ,
         
         SizedBox(height: 20,),
        GestureDetector (
          onTap: () => {
              Navigator.push(context,SwipeLeftAnimationRoute(milliseconds: 200,widget: WalkThrough1()))
          },
           child: Container(
            height: 50,
           decoration: BoxDecoration(color: Colors.green ,
                 ),
           child: Center(child: Text("Sign Up")),
           ),
         )
       ],
       
       ),

            ),]
            ),   ),
   ), );
                  
                 
             
}
}