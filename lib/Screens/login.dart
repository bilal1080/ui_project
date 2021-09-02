import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/Elevatedbutton.dart';
import 'package:flutter_project1/Common/widgets/height.dart';
import 'package:flutter_project1/Common/widgets/materialbutton.dart';

import 'package:flutter_project1/Common/widgets/textformfield.dart';
import 'package:flutter_project1/Screens/funtions.dart';
import 'package:flutter_project1/Screens/mainpage.dart';
import 'package:flutter_project1/Screens/signup.dart';
import 'package:flutter_project1/util/Shared_preference.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              Height(height: 2.0),
              Text(
                "Let's find what you desire.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
              Height(height: 34.0),
              Image(
                image: AssetImage("assets/img_login.png"),
                height: 192.15,
                width: 229.55,
              ),
              Height(height: 41.85),
              TextInputField(
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid Email';
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
                  if (value!.isEmpty || value.length < 7) {
                    return 'Invalid password';
                  }
                  return null;
                },
                onTap: () {},
                label: 'Password',
                keyboardType: TextInputType.visiblePassword,
                controller: _passwordController,
              ),
              Height(height: 15.0),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff00B761),
                  ),
                ),
              ),
              Height(height: 31.0),
              InputMaterialButton(
                  text: 'Login',
                  color: Color(0xff00B761),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Userlogin(_emailController.text.toString(),
                          _passwordController.text.toString());
                      _emailController.clear();
                      _passwordController.clear();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
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
                  onPressed: () {
                    getToken();
                  },
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
                    "Don" + "'" + "t have an Account? ",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      'Signup',
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
