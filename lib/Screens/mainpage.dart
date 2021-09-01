import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/materialbutton.dart';
import 'package:flutter_project1/Screens/funtions.dart';
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
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputMaterialButton(
                text: 'Click me to get data',
                color: Colors.blue,
                onPressed: () {
                  getData();
                }),
            SizedBox(
              height: 20,
            ),
            InputMaterialButton(
                text: 'Click me to post data',
                color: Colors.blue,
                onPressed: () {
                  createUser('malikg@mailinator.com', 'Malik', 'Bilal',
                      '12345678', '0303172383');
                }),
          ],
        ),
      ),
    );
  }
}
