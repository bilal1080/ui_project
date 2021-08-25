import 'package:flutter/material.dart';
import 'package:flutter_project1/Common/widgets/height.dart';
import 'package:flutter_project1/Common/widgets/materialbutton.dart';
import 'package:flutter_project1/Common/widgets/sizedbox.dart';
import 'package:flutter_project1/Common/widgets/textformfield.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
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
                fontWeight: FontWeight.w400
                
              ),
            ),
            Image(
                      image: AssetImage("assets/img_login.png"),
                      height: 300,
                      width: 300,
                    ),
            TextInputField(onTap: (){},label: 'Name', keyboardType: TextInputType.name),
            Height(height: 10.0),
            TextInputField(onTap: (){},label: 'Email', keyboardType: TextInputType.emailAddress),
           Height(height: 10.0),
            TextInputField(
              onTap: (){},
              label: 'Password', 
              keyboardType: TextInputType.numberWithOptions(), 
                  ),
            Height(height: 10.0),
            InputMaterialButton(text: 'Signup', color: Color(0xff00B761), onPressed: (){}),
            Height(height: 27.0),
            Text('or',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
            ),),
            Height(height: 27.0),
            InputMaterialButton(text: 'Facebook', color: Color(0xff0078ff), onPressed: (){}),
            Height(height: 27.0),
            InputMaterialButton(text: 'Google', color: Color(0xffEA4335), onPressed: (){}),
            Height(height: 27.0),

          ],
        ),
      ),
    );
  }
}
