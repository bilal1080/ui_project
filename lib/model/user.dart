import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  String? username;
  String? password;
  String? number;
  String? firstName;
  String? lastName;
  String? token;

  Post({
    required this.username,
    required this.password,
    required this.number,
    required this.firstName,
    required this.lastName,
    required this.token,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        username: json["username"],
        password: json["password"],
        number: json["number"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "number": number,
        "fistName": firstName,
        "lastName": lastName,
        "token" : token,
      };
}
