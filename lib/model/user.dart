import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  String? username;
  String? password;
  Post({
    required this.username,
    required this.password,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        username: json["title"],
        password: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}
