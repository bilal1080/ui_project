import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/height.dart';
import 'package:flutter_project1/Common/widgets/inputText.dart';
import 'package:flutter_project1/Common/widgets/materialbutton.dart';
import 'package:flutter_project1/Common/widgets/textformfield.dart';

class EditPost extends StatefulWidget {
  EditPost({Key? key}) : super(key: key);

  @override
  _EditPostState createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {
  TextEditingController _titleController = new TextEditingController();

  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                text: 'Edit Post',
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
                    validator: (value) {},
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
                        decoration: InputDecoration.collapsed(hintText: "Body"),
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
                                onPressed: () {},
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
                          Container(
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
                        ],
                      )),
                ),
                Height(height: 37.0),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  child: InputMaterialButton(
                      text: 'Done', color: Color(0xff00B761), onPressed: () {}),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
