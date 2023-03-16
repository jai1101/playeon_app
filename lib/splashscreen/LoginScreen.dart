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
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  
  Future<void> login(String email , password) async {
    try{
          
            Response response = await post(
             Uri,parse("url_api"),
          //   body:{
          //               "email" : email,
          //               "pasword" : password
          //   }
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
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
     appBar: AppBar(
      title: Text("Sign up page"),
     ),
     body: Padding(
       padding: const EdgeInsets.all(20),
       child: Container( 
        width: 300.0,
    height: 500.0,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/img_login_bg.png"),
                    fit: BoxFit.cover
        ),
    ),
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: 'email'
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
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupScreen()));
                      },
                      child: 
                Text(
                  "Create an Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Rubik',
                      color: Colors.grey,),
                ),),
              ],
            ),
          GestureDetector (
            onTap: () => {
              login(emailController.text.toString(), passwordController.text.toString());
            },
             child: Container(
              height: 50,
             decoration: BoxDecoration(color: Colors.green ,
                   ),
             child: Center(child: Text("Login")),
             ),
           )
         ],
         ),
       ),
     ),
                          );
  }
  
  
}
