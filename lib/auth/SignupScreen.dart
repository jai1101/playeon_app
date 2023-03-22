// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';

import 'package:playeon/walkscreen/walkthrough.dart';
import 'package:playeon/widgets/style.dart';

import '../widgets/common.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
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
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/icons/ic_signrect1.png"),
                  fit: BoxFit.cover),
            ),
            child: Stack(children: [
              Positioned.fill(
                  child: Image.asset(
                "assets/icons/ic_signrect02.png",
                fit: BoxFit.fill,
              )),
              Positioned.fill(
                  child: Image.asset(
                "assets/icons/ic_signrect12.png",
                fit: BoxFit.fill,
              )),
              Positioned.fill(
                  child: Image.asset(
                "assets/icons/ic_signrect22.png",
                fit: BoxFit.fill,
              )),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Wellcome!",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 36,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "It only takes a minute",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabled: true,
                          filled: true,
                          fillColor: primaryColorB,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabled: true,
                          filled: true,
                          fillColor: primaryColorB,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabled: true,
                          filled: true,
                          fillColor: primaryColorB,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabled: true,
                          filled: true,
                          fillColor: primaryColorB,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: numberController,
                        decoration: InputDecoration(
                          hintText: 'Number',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabled: true,
                          filled: true,
                          fillColor: primaryColorB,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        controller: cityController,
                        decoration: InputDecoration(
                          hintText: 'Choose your City',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabled: true,
                          filled: true,
                          fillColor: primaryColorB,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        controller: codeController,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Referal Code ',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabled: true,
                          filled: true,
                          fillColor: primaryColorB,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            SwipeLeftAnimationRoute(
                                milliseconds: 200, widget: WalkThrough1()))
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Center(
                            child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
