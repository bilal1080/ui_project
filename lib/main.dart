import 'package:flutter/material.dart';
//import 'package:flutter_project1/Screens/createPost.dart';
import 'package:flutter_project1/Screens/editPost.dart';
//import 'package:flutter_project1/Screens/postList.dart';
//import 'package:flutter_project1/Screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New App',
      home: EditPost(),
    );
  }
}
