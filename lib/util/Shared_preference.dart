import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

Future saveUser(String token) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("api_token", token);
  //print(token.toString());
}

void removeUser() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove("api_token");
}

getToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  String? apitoken = prefs.getString("api_token");
  print(apitoken.toString());
}


