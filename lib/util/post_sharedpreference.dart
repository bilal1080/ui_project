import 'dart:convert';

import 'package:flutter_project1/model/post.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: non_constant_identifier_names

// ignore: unused_element
// savetitle(String title) async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString("title", title.toString());
//   print(title.toString());
//   print('>>>>>>>>>>>>>>>>>>>>>>');
// }

// // ignore: unused_element
// savebody(String body) async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString("body", body.toString());
//   print(body.toString());
//   //print('>>>>>>>>>>>>>>>>>>>>>>');
// }

// // ignore: unused_element
// saveCount(int value) async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();

//   print(value);
//   print('>>>>>>>>>int value>>>>>>>>>>>>>');
//   prefs..setInt('count', value);
// }

// // ignore: unused_element
// Future<String?> gettitle() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();

//   String? title = prefs.getString("title");
//   return title;
// }

// // ignore: unused_element
// Future<String?> getbody() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();

//   String? body = prefs.getString("body");
//   print('I ma in BODY');
//   return body;
// }

// // ignore: unused_element
// Future<int?> getCount() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();

//   int? count = prefs.getInt('count');
//   print('I am in count');
//   return count;
// }

// // ignore: unused_element
removedata() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
}

// // ignore: unused_element
// void saveimage(path) async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   print('I am in save image ');
//   prefs.setString("imagePath", path.toString());
//   print(path);
// }

// // ignore: unused_element
// Future<String?> getimage() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();

//   // ignore: non_constant_identifier_names
//   String? Path = prefs.getString("imagePath");
//   return Path;
// }

saveData(String title, String body, String image) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final data = Postdata(
    title: title,
    body: body,
    iMage: image,
  );
  Map data1 = data.toJson();
  String abc = json.encode(data1);
  print("generated json is $abc");
  prefs.setString("mydata", abc);
}

Future<List<Map>> getData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  String? dataa = prefs.getString("mydata");

  final List<Map> data2 = jsonDecode(dataa!);
  return data2;
}
