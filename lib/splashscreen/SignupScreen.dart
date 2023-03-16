// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';

import 'package:playeon/splashscreen/walkthrough.dart';

import '../widgets/common.dart';
import 'package:http/http.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
   @override
     void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) =>
        Navigator.pushReplacement(
            context,
            SwipeLeftAnimationRoute(
                milliseconds: 300, widget: WalkThrough1())));
    super.initState();
  }
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
   TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
    TextEditingController numberController = TextEditingController();
     TextEditingController cityController = TextEditingController();
      TextEditingController codeController = TextEditingController();

  void Signup(String name,username, email , password ,number , city ,code ){
    try{
          
           Response response = await post(
            Uri parse(url_api),
            body:{
              "name" : name,
              "username" : username,
                        "email" : email,
                        "pasword" : password,
                        "number ":number ,
                        "city" : city,
                        "code ": code ,
                        
                        

            }
           );
           if(response.statusCode == 200){
            print("account created Successfully");
           }
           else{
            print("failed");
           }
    }
    catch(e){
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Sign up page"),
     ),
     body: Padding(
       padding: const EdgeInsets.all(20),
       child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        TextFormField(
          controller: nameController,
          decoration: InputDecoration(
            hintText: 'Name'
           ),
        )
        ,
        SizedBox(height: 20,),
        TextFormField(
          controller: usernameController,
          decoration: InputDecoration(
            hintText: 'Username'
           ),
        )
        ,
         SizedBox(height: 20,),

         SizedBox(height: 20,),
        TextFormField(
          controller: emailController,
          decoration: InputDecoration(
            hintText: 'Email'
           ),
        )
        ,
        SizedBox(height: 20,),
        TextFormField(
          controller: passwordController,
          decoration: InputDecoration(
            hintText: 'Password'
           ),
        )
        ,
        SizedBox(height: 20,),
        TextFormField(
          controller: numberController,
          decoration: InputDecoration(
            hintText: 'Number'
           ),
        )
        ,
         SizedBox(height: 20,),
        TextFormField(
          controller: cityController,
          decoration: InputDecoration(
            hintText: 'Choose your City'
           ),
        )
        ,
        SizedBox(height: 20,),
        TextFormField(
          controller: codeController,
          decoration: InputDecoration(
            hintText: 'Enter Your Referal Code '
           ),
        )
        ,
         
         SizedBox(height: 20,),
        GestureDetector (
          onTap: () => {
            Signup(
              emailController.text.toString(), passwordController.text.toString()
            )
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
     ),
                          );
                  
                 
             
}
}