



import 'dart:convert';

List<Postdata> postFromJson(String str) => List<Postdata>.from(json.decode(str).map((x) => Postdata.fromJson(x)));

String postToJson(List<Postdata> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class Postdata {
  final String? title;
  final String? body;
  final String? iMage;

  Postdata({
    this.title,
    this.body,
    this.iMage,
  });
  factory Postdata.fromJson(Map<String, dynamic> json) => Postdata(
        title: json["title"],
        body:  json["body"],
        iMage: json["image"],
      );
  Map<String, dynamic> toJson() => {
        
        "title" : title,
        "body"  : body,
        "iMage" : iMage,
      };
   
}
