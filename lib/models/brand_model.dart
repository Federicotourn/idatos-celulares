// To parse this JSON data, do
//
//     final brand = brandFromJson(jsonString);

import 'dart:convert';

List<Brand> brandFromJson(String str) => List<Brand>.from(json.decode(str).map((x) => Brand.fromJson(x)));

String brandToJson(List<Brand> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Brand {
  String brandValue;

  Brand({
    required this.brandValue,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        brandValue: json["brandValue"],
      );

  Map<String, dynamic> toJson() => {
        "brandValue": brandValue,
      };
}
