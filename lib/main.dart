import 'package:flutter/material.dart';
//import 'package:flutter_project1/Screens/signup.dart';

import 'package:flutter_project1/Screens/splashScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New App',
      home: SplashScreen(),
    );
  }
}
