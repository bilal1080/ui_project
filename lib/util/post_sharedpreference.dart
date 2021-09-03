import 'package:shared_preferences/shared_preferences.dart';

savetitle(String title) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("title", title.toString());
  print(title.toString());
  print('>>>>>>>>>>>>>>>>>>>>>>');
}

savebody(String body) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("title", body.toString());
  print(body.toString());
  print('>>>>>>>>>>>>>>>>>>>>>>');
}

Future<String> gettitle() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  String title = prefs.getString("title").toString();
  return title;
}

getbody() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  String? body = prefs.getString("body").toString();
  return body;
}

void removeUser() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.remove("title");
  prefs.remove("body");
}

void saveimage(path) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("imagePath", path);
}

Future<String?> getimage() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  // ignore: non_constant_identifier_names
  String? Path = prefs.getString("imagePath");
  return Path;
}
