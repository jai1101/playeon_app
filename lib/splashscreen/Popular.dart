// import 'package:flutter/material.dart';

// class PopularMovies extends StatelessWidget {
//   const PopularMovies({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Popular",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 25,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               Text(
//                 "View ALL",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                 ),
//               )
//             ],
//           ),
       
//         ),
//       ]
//     );
//      GridView.builder(
//   itemCount: 100,
//   itemBuilder: (context, index) => ItemTile(index),
//   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 2,
//   ),
// );  
    
//   }
// }