import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/materialbutton.dart';
import 'package:flutter_project1/Screens/login.dart';
import 'package:flutter_project1/util/Shared_preference.dart';
//import 'package:flutter_project1/Screens/funtions.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              removeUser();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                  (route) => false);
            },
            icon: Icon(Icons.logout),
          )
        ],
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // InputMaterialButton(
            //     text: 'Click me to remove token',
            //     color: Colors.blue,
            //     onPressed: () {
            //       removeUser();
            //     }),
            SizedBox(
              height: 20,
            ),
            InputMaterialButton(
                text: 'Click me to check token',
                color: Colors.blue,
                onPressed: () {
                  getToken();
                }),
          ],
        ),
      ),
    );
  }
}
