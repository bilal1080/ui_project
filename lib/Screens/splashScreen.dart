import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project1/Screens/signup.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 2), () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => SignUp())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0xff00B761)),
            child: Center(
              child: Text(
                'JOBSNOW',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
