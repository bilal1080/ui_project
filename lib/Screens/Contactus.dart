import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/height.dart';
import 'package:flutter_project1/Common/widgets/inputText.dart';
import 'package:flutter_project1/Common/widgets/materialbutton.dart';
import 'package:flutter_project1/Common/widgets/textformfield.dart';

class ContactUs extends StatefulWidget {
  ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  // ignore: unused_field
  TextEditingController _messageController = new TextEditingController();
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Form(
              key: _formkey,
              child: ListView(
                children: <Widget>[
                  Height(
                    height: 50.0,
                  ),
                  InputText(
                    text: "Contact Us",
                    color: Color(0xff00B761),
                    weight: FontWeight.w900,
                    size: 24.0,
                    alignment: TextAlign.center,
                  ),
                  Height(height: 2.0),
                  InputText(
                    text: "Please fill this form in a decent manner",
                    color: Colors.black,
                    weight: FontWeight.w400,
                    size: 16.0,
                    alignment: TextAlign.center,
                  ),
                  Height(height: 34.0),
                  Image(
                    image: AssetImage("assets/54321.png"),
                    height: 192.15,
                    width: 229.55,
                  ),
                  Height(height: 41.85),
                  TextInputField(
                    validator: (value) {},
                    onTap: () {},
                    label: 'Name',
                    keyboardType: TextInputType.emailAddress,
                    controller: _nameController,
                  ),
                  Height(height: 10.0),
                  TextInputField(
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Please enter a valid Email';
                      }
                      return null;
                    },
                    onTap: () {},
                    label: 'Email',
                    keyboardType: TextInputType.visiblePassword,
                    controller: _emailController,
                  ),
                  Height(height: 10.0),
                  Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: TextFormField(
                          maxLines: 6,
                          controller: _messageController,
                          decoration:
                              InputDecoration.collapsed(hintText: "Message"),
                          validator: (value) {
                            if (value == null) {
                              print('Please enter the data');
                            }
                          },
                        ),
                      )),
                  Height(height: 10.0),
                  InputMaterialButton(
                      text: 'Submit',
                      color: Color(0xff00B761),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Height(height: 20.0),
                ],
              ),
            )));
  }
}
