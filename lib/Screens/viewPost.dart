import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/height.dart';
import 'package:flutter_project1/Common/widgets/inputText.dart';

class ViewPost extends StatefulWidget {
  ViewPost({Key? key}) : super(key: key);

  @override
  _ViewPostState createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  
  String _body = '';
  String _imagePath = '';
  @override
  void initState() {
    // _getBody();
    // _getImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62.0),
        child: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xff00B761),
            title: InputText(
                text: 'View Post',
                color: Colors.white,
                weight: FontWeight.w700,
                size: 24.0,
                alignment: TextAlign.center)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 29.0, right: 29.0),
        child: Column(
          children: <Widget>[
            Height(height: 51.0),
            Container(
              height: 108.0,
              width: MediaQuery.of(context).size.width,
              //color: Colors.amber,
              child: InputText(
                  text: _body,
                  color: Colors.black,
                  weight: FontWeight.w400,
                  size: 16.0,
                  alignment: TextAlign.start),
            ),
            Height(height: 23.0),
            Container(
              height: 148,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xffC4C4C4),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: FittedBox(
                child: Image.file(
                  File(_imagePath),
                ),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void _getBody() {
  //   getbody().then((value) {
  //     setState(() {
  //       print('value');
  //       _body = value!;
  //     });
  //   });
  // }

  // void _getImage() {
  //   getimage().then((value) {
  //     setState(() {
  //       _imagePath = value!;
  //     });
  //   });
  // }
}
