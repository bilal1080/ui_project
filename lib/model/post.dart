
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
