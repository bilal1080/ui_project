import 'dart:convert';
import 'package:flutter_project1/model/user.dart';
import 'package:flutter_project1/util/Shared_preference.dart';

import 'package:http/http.dart' as http;
import 'package:flutter_project1/util/const.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences prefs = SharedPreferences.getInstance() as SharedPreferences;

Future<List?> getData() async {
  http.Response response = await http.get(
    Uri.parse(getDataUrl),
  );
  print(jsonDecode(response.body));
  return null;
}

void createUser(String username, String firstName, String lastName,
    String password, String number) async {
  String url = BASE_URL;
  url = url + '/api/v1/users/?';
  url = url + 'user[email]=$username';
  url = url + '&user[first_name]=$firstName';
  url = url + '&user[last_name]=$lastName';
  url = url + '&user[phone]=$number';
  url = url + '&PushToken=pushasdfasd4cwerqwecda4qrcadqd3der3rqwer33qe';
  url = url + '&user[password]=$password';
  url = url + '&user[passsword_confirmation]=$password';
  url = url + '&user[role]=employee';

  final response = await http.post(
    Uri.parse(url),
  );
  print(response.body);
}

// ignore: non_constant_identifier_names
Future<Post?> Userlogin(String user_name, String pass_word) async {
  // ignore: non_constant_identifier_names
  String URL = BASE_URL;
  URL = URL + '/api/v1/sessions/?';
  URL = URL + 'email=$user_name';
  URL = URL + '&password=$pass_word';

  final response = await http.post(Uri.parse(URL));
  //print(response.statusCode);

  if (response.statusCode == 200 || response.statusCode == 201) {
    final Map<String, dynamic> responseData = json.decode(response.body);

    var userData = responseData["api_token"];
    print(userData);
    print('>>>>>>>>>>>>token');
    saveUser(userData);
    // print(UserPreferences().getToken());
  }
}

// Future<Post> deleteUser(int id) async {
//   final http.Response response = await http
//       .delete(Uri.parse(BASE_URL+'/$id'));

//   if (response.statusCode == 200) {
//     print('data deleted');
//     return Post.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Failed to delete album.');
//   }
// }

// Future<Post> updatePost(int id, String title) async {
//   final response = await http.put(
//     Uri.parse(BASE_URL+'/$id'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'title': title,
//     }),
//   );

//   if (response.statusCode == 200) {
//     print('data Updated');
//     return Post.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to update album.');
//   }
// }
