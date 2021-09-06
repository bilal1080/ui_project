

import 'dart:io';

import 'package:flutter_project1/Screens/viewPost.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/inputText.dart';
import 'package:flutter_project1/util/post_sharedpreference.dart';

class PostList extends StatefulWidget {
  PostList({Key? key}) : super(key: key);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  final fifteenAgo = new DateTime.now().subtract(new Duration(seconds: 0));

  int? count;
  // String? _title;
  // String? _imagePath;
  List<Map> storedData = [];
  @override
  void initState() {
    _getstoredData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color(0xff00B761),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(62.0),
          child: AppBar(
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      right: 4.0, top: 21.0, bottom: 21.0),
                  child: GestureDetector(
                    onTap: () {
                      removedata();
                    },
                    child: InputText(
                        text: 'Add new',
                        color: Colors.white,
                        weight: FontWeight.w400,
                        size: 14.0,
                        alignment: TextAlign.center),
                  ),
                ),
              ],
              centerTitle: true,
              backgroundColor: Color(0xff00B761),
              title: InputText(
                  text: 'Post list',
                  color: Colors.white,
                  weight: FontWeight.w700,
                  size: 24.0,
                  alignment: TextAlign.center)),
        ),
        body: ListView.builder(
          itemCount: storedData.length,
          itemBuilder: (BuildContext context, int position) {
            return Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
              child: Container(
                height: 105.0,
                //width: 325.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ViewPost()));
                  },
                  child: Card(
                    margin: EdgeInsets.only(top: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: Image.file(
                              File(storedData[position]["iMage"].toString()),
                              fit: BoxFit.cover,
                            ).image,
                          ),
                          title: Text(storedData[position]["title"].toString()),
                          subtitle: Text(timeago.format(fifteenAgo)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }

  void _getstoredData() {
    Future <List<Map>> myData = getData();
    myData.then((value) {
      setState(() {
        storedData=value;
      });
    });
  }
}
