import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/inputText.dart';

class PostList extends StatefulWidget {
  PostList({Key? key}) : super(key: key);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff00B761),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62.0),
        child: AppBar(
            actions: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(right: 4.0, top: 21.0, bottom: 21.0),
                child: GestureDetector(
                  onTap: () {},
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
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 28.0),
        child: Container(
          height: 105.0,
          //width: 325.0,
          child: Card(
            margin: EdgeInsets.only(top: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image.asset('assets/img_icon1.png'),
                  title: Text('Post title'),
                  subtitle: Text('time'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
