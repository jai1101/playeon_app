import 'package:flutter/material.dart';
import 'package:playeon/widgets/style.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    backgroundColor: Colors.black ,
   elevation: 0,
   actions: [
Padding(
      padding: const EdgeInsets.only(right :20.0),
      child: IconButton(
        onPressed: () {},                        
      icon: Icon(
        Icons.settings , 
        color: Colors.white,),
        ),
    ),
      ],
     leading: Padding(
      padding: EdgeInsets.only(left: 20),
     child: IconButton(
      onPressed: () {},
      icon: Icon(
       Icons.arrow_back_ios , color: Colors.white,
      ),
     ),
     )
      ,),
   body: Column(
    children: [
    Container(color: Colors.black,
    child: Column(
       children: [
      Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
       

          children: [
            Stack(
            alignment: Alignment.bottomRight,
              children:[ CircleAvatar(
                radius: 50,
                // backgroundColor: AssetImage("assets/images/Avatar3.png"),
              ),
            InkWell(
              onTap: () {},
              
            ),
              
              CircleAvatar(backgroundColor: primaryColor1 ,)
              ]
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "muhammad Bilal",
                style: Theme.of(context).textTheme.headline2,
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: [
                Column(
                  children: [Text(
                    "3210" , 
                    style: Theme.of(context).textTheme.headline2 ,),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                    "Likes" , 
                    style: Theme.of(context).textTheme.headline2 ,),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "1232" ,
                      style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color : Colors.white)
                    ),
                     Text(
                      "44" ,
                      style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color : Colors.white)
                    ),
                    SizedBox(
                      height: 15,
                      ),
                       Text(
                      "Subscribtion" ,
                      style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color : Colors.white)
                    ),
                  ]
                  ,
                )
              ],
              ),
            //griddle
          ],
        ),
      )
    ]) ,)],
   ),
    );
        
       
  }
}