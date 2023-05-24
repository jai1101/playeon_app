import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/user_provider.dart';
import 'splashscreen/splashscreen1.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playeon',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
      // home: MainScreen(),
    );
  }
}
