import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/height.dart';
import 'package:flutter_project1/Common/widgets/inputText.dart';
import 'package:flutter_project1/Common/widgets/materialbutton.dart';
import 'package:flutter_project1/Common/widgets/textformfield.dart';
import 'package:flutter_project1/Screens/postList.dart';
import 'package:flutter_project1/util/post_sharedpreference.dart';
import 'package:image_picker/image_picker.dart';

class CreatePost extends StatefulWidget {
  CreatePost({Key? key}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  TextEditingController _titleController = new TextEditingController();
  // ignore: unused_field
  TextEditingController _bodyController = new TextEditingController();

  int count = 1;
  XFile? _imageFile;
  @override
  void initState() {
    super.initState();
  }

  var _formkey = GlobalKey<FormState>();
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
                text: 'Create Post',
                color: Colors.white,
                weight: FontWeight.w700,
                size: 24.0,
                alignment: TextAlign.center)),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                Height(height: 85.0),
                SizedBox(
                  height: 50,
                  child: TextInputField(
                    label: 'Title',
                    keyboardType: TextInputType.text,
                    onTap: () {},
                    controller: _titleController,
                    validator: (value) {
                      if (value == null) {
                        print('please enter the title name');
                      }
                    },
                  ),
                ),
                Height(height: 23.0),
                Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 0.5),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                        maxLines: 6,
                        controller: _bodyController,
                        decoration: InputDecoration.collapsed(hintText: "Body"),
                        validator: (value) {
                          if (value == null) {
                            print('Please enter the data');
                          }
                        },
                      ),
                    )),
                Height(height: 36.0),
                SizedBox(
                  height: 149.0,
                  child: Card(
                      color: Color(0xffC4C4C4),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                color: Colors.white,
                                onPressed: () {
                                  _imgFromGallery();

                                  //print(UserPreferences().getUser());
                                },
                                child: InputText(
                                    text: 'Choose Image',
                                    color: Colors.black,
                                    weight: FontWeight.w400,
                                    size: 16.0,
                                    alignment: TextAlign.center)),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          _imageFile == null
                              ? Container(
                                  height: 128.0,
                                  width: 173.0,
                                  color: Colors.white,
                                  child: Center(
                                    child: InputText(
                                        text: 'Image here',
                                        color: Colors.black26,
                                        weight: FontWeight.w400,
                                        size: 16.0,
                                        alignment: TextAlign.center),
                                  ),
                                )
                              : Container(
                                  height: 128.0,
                                  width: 173.0,
                                  color: Colors.white,
                                  child: Image.file(File(_imageFile!.path)),
                                )
                        ],
                      )),
                ),
                Height(height: 37.0),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  child: InputMaterialButton(
                      text: 'Create Post',
                      color: Color(0xff00B761),
                      onPressed: () {
                        saveData( _titleController.text,
                            _bodyController.text, _imageFile!.path);
                        // counter();
                        removeData();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostList()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  _imgFromGallery() async {
    final pickedimage = (await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 50));

    setState(() {
      if (pickedimage != null) {
        _imageFile = pickedimage;
        print('image path');
        print(_imageFile!.path);
      }
    });
  }

  removeData() {
    _bodyController.clear();
    _titleController.clear();
    _imageFile = null;
  }

  // counter() {
  //   print("before count $count");
  //   count++;
  //   print("After count $count");
  // }
}
