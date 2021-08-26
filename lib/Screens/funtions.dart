import 'dart:convert';
import 'package:flutter_project1/model/user.dart';
import 'package:flutter_project1/util/const.dart';
import 'package:http/http.dart' as http;

Future<Post?> getData() async {
  http.Response response = await http.get(Uri.parse(BASE_URL),
  );
  print(jsonDecode(response.body));
  return null;
}

void createUser(String username, String password) async {
  final response = await http.post(Uri.parse(BASE_URL), body: json.encode({
    
    "username": username.toString(),
    "password": password.toString(),
  }),);
  print(response.body);
}

Future<Post> deleteUser(int id) async {
  final http.Response response = await http
      .delete(Uri.parse(BASE_URL+'/$id'));

  if (response.statusCode == 200) {
    print('data deleted');
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to delete album.');
  }
}

Future<Post> updatePost(int id, String title) async {
  final response = await http.put(
    Uri.parse(BASE_URL+'/$id'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  if (response.statusCode == 200) {
    print('data Updated');
    return Post.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to update album.');
  }
}
