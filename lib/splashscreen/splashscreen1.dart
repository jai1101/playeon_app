import 'package:flutter/material.dart';

import '../widgets/common.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
                opacity: 0.1, child: Image.asset("assets/icons/ic_bg.png")),
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Image.asset("assets/icons/ic_logo.png", scale: 2),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
