import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/materialbutton.dart';
import 'package:flutter_project1/Screens/funtions.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('I am here'),
          InputMaterialButton(
              text: 'Click me',
              color: Colors.blue,
              onPressed: () {
                createUser('malik1@milinator.com', '123456789');
              }),
        ],
      ),
    );
  }
}
