import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/Elevatedbutton.dart';
import 'package:flutter_project1/Common/widgets/height.dart';
import 'package:flutter_project1/Common/widgets/materialbutton.dart';

import 'package:flutter_project1/Common/widgets/textformfield.dart';
import 'package:flutter_project1/Screens/funtions.dart';
import 'package:flutter_project1/Screens/login.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _firstnameController = new TextEditingController();
  TextEditingController _lastnameController = new TextEditingController();
  TextEditingController _phonenoController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
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
              Container(
                height: 50.0,
              ),
              Text(
                'Welcome!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff00B761),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'You are almost there!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
              Height(height: 36.0),
              Image(
                image: AssetImage("assets/img_signup.png"),
                height: 188,
                width: 233,
              ),
              Height(height: 44.0),
              TextInputField(
                validator: (value) {
                  if (value!.isEmpty ||
                      value.contains('@') ||
                      value.contains('.')) {
                    return 'Please enter a valid Name';
                  }
                  return null;
                },
                onTap: () {},
                label: 'First Name',
                keyboardType: TextInputType.name,
                controller: _firstnameController,
              ),
              Height(height: 10.0),
              TextInputField(
                validator: (value) {
                  if (value!.isEmpty ||
                      value.contains('@') ||
                      value.contains('.')) {
                    return 'Please enter a valid Name';
                  }
                  return null;
                },
                onTap: () {},
                label: 'Last Name',
                keyboardType: TextInputType.name,
                controller: _lastnameController,
              ),
              Height(height: 10.0),
              TextInputField(
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid Username';
                  }
                  return null;
                },
                onTap: () {},
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
              ),
              Height(height: 10.0),
              TextInputField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                onTap: () {},
                label: 'Phone No#',
                keyboardType: TextInputType.emailAddress,
                controller: _phonenoController,
              ),
              Height(height: 10.0),
              TextInputField(
                validator: (value) {
                  if (value!.isEmpty || value.length < 7) {
                    return 'Please enter a valid password';
                  }
                  return null;
                },
                onTap: () {},
                label: 'Password',
                keyboardType: TextInputType.visiblePassword,
                controller: _passwordController,
              ),
              Height(height: 10.0),
              InputMaterialButton(
                  text: 'Signup',
                  color: Color(0xff00B761),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      createUser(
                          _emailController.text.toString(),
                          _firstnameController.text.toString(),
                          _lastnameController.text.toString(),
                          _passwordController.text.toString(),
                          _phonenoController.text.toString());
                      _emailController.clear();
                      _firstnameController.clear();
                      _lastnameController.clear();
                      _phonenoController.clear();
                      _passwordController.clear();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    }
                  }),
              Height(height: 27.0),
              Text(
                'or',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Height(height: 27.0),
              InputElevatedButton(
                  text: 'Facebook',
                  color: Color(0xff0078ff),
                  onPressed: () {},
                  image: Image.asset("assets/icon/ic_fb.png")),
              Height(height: 10.0),
              InputElevatedButton(
                  text: 'Google',
                  color: Color(0xffEA4335),
                  onPressed: () {},
                  image: Image.asset("assets/icon/ic_google.png")),
              Height(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an Account? ',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xff00B761),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Height(height: 27.0),
            ],
          ),
        ),
      ),
    );
  }
}
