import 'dart:convert';

import 'package:flutter_project1/model/post.dart';
import 'package:shared_preferences/shared_preferences.dart';
final List l1 = [];

removedata() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
}

saveData(String title, String body, String image) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final data = Postdata(
    title: title,
    body: body,
    iMage: image,
  );
  Map data1 = data.toJson();
  String abc = json.encode(data1);
  prefs.setString("mydata", abc);
}

Future<List> getData() async {
  
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  String? dataa = prefs.getString("mydata");
  final Map data2 = jsonDecode(dataa!);
  l1.add(data2);
  return l1;
}
