import 'package:flutter/material.dart';

class NowScreen extends StatefulWidget {
  const NowScreen ({super.key});

  @override
  State<NowScreen > createState() => _NowScreenState();
}

class _NowScreenState extends State<NowScreen > {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, route),
      child: Padding(padding: EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Hero(tag: "movie hero${movieModel.id}", child: 
        Container(height: 210,
        width: ,))],
      ),),
    );
  }
}