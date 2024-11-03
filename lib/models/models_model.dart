// To parse this JSON data, do
//
//     final model = modelFromJson(jsonString);

import 'dart:convert';

List<Model> modelFromJson(String str) => List<Model>.from(json.decode(str).map((x) => Model.fromJson(x)));

String modelToJson(List<Model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Model {
  String modelValue;

  Model({
    required this.modelValue,
  });

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        modelValue: json["modelValue"],
      );

  Map<String, dynamic> toJson() => {
        "modelValue": modelValue,
      };
}
