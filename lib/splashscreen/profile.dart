// import 'package:flutter/material.dart';


// class Profile extends StatefulWidget {
//   const Profile({super.key});

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back_ios, color: Colors.white,),
//         title: Text("Profile"),
//         elevation: 0,
//         backgroundColor: Color(0xff0932f),
//         actions: [
//           Padding(padding: EdgeInsets.all(8.0) , child: Icon(Icons.more_vert_outlined : color.whte))
//         ],

//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 25.0, top: 8),
//               child: CircleAvatar(
//                 radius: 40,
//                 backgroundImage: AssetImage(''),
//               ),
//             ),
//             Padding(
//               padding:EdgeInsets.only(left: 35),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Avanya" , style : TextStyle(fontWeight: FontWeight.bold , fontSize: 24 , color: Colors.white ,)),
//                   Padding(padding: const EdgeInsets.only(top: 8),
//                   child: Row(crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Icon(Icons.location_on , color: Colors.white, size: 18,),
//                     Padding(
//                       padding:  EdgeInsets.only(left: 8),
//                  child:Text("Indore-IN" , style : TextStyle (color: Colors.white , wordSpacing: 2 ,letterSpacing: 4 , ),),)
                    
                    
//                   ],),
                  
//                   )
                
//                 ],
//               ),
              
//                )
//           ],

//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 24 , top: 24),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children:[
//               Column (
//               mainAxisAlignment : MainAxisAlignment.spaceBetween,
//               children:[
              

//                 Text("18k" , style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold , fontSize: 22),),
//                             Text("Followers" , style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold , fontSize: 22),),
//               ]
//               ),
//   Container(
//     color: Colors.white,
//     width: 0.2,
//     height: 22,
//   ),
//   Column(
//     mainAxisAlignment: MainAxisAlignment.center ,
//     children: [
//       Text("400" , style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold , fontSize: 22),),
//                             Text("Following" , style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold , fontSize: 22),),
      
//     ],
//   ),
//    Container(
//     color: Colors.white,
//     width: 0.2,
//     height: 22,
//   ),
//   Container(decoration: BoxDecoration(
//    borderRadius: BorderRadius.all(Radius.circular(33)),
//    gradient: LinearGradient(
//     colors: Colors.accents
//    ) 
//   ),)
            
//             ],
//           ),
        
          
          
//           )
        
        
//         ],
//       ),
//     );
//   }
// }