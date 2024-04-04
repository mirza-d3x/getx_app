import 'dart:convert';

String page3ModelToJson(Page3Model data) => json.encode(data.toJson());

class Page3Model {
  final List<String> page3;

  Page3Model({
    required this.page3,
  });

  factory Page3Model.fromJson(Map<String, dynamic> json) => Page3Model(
        page3: List<String>.from(json["page3"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "page3": List<dynamic>.from(page3.map((x) => x)),
      };
}
