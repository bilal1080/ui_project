import 'package:flutter_project1/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class UserPreferences {
  Future<bool> saveUser(Post user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString("firstname", user.firstName.toString());
    prefs.setString("lastname", user.lastName.toString());
    prefs.setString("username", user.username.toString());
    prefs.setString("phone", user.number.toString());
    prefs.setString("password", user.password.toString());
    prefs.setString("Token", user.token.toString());

    print("object prefere");
    print(user.token);

    // ignore: deprecated_member_use
    return prefs.commit();
  }

  Future<Post> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? firstName = prefs.getString("firstName");
    String? lastName = prefs.getString("lastName");
    String? username = prefs.getString("username");
    String? number = prefs.getString("number");
    String? password = prefs.getString("password");
    String? token = prefs.getString("token");

    return Post(
        username: username,
        password: password,
        number: number,
        firstName: firstName,
        lastName: lastName,
        token: token);
  }

  void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove("firstName");
    prefs.remove("lastName");
    prefs.remove("number");
    prefs.remove("password");
    prefs.remove("token");
  }

  Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    return token;
  }
}
