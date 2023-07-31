import 'dart:convert';

SelectNetworkModel selectNetworkModelFromMap(String str) =>
    SelectNetworkModel.fromMap(json.decode(str));

String selectNetworkModelToMap(SelectNetworkModel data) =>
    json.encode(data.toMap());

class SelectNetworkModel {
  final String image;
  final String name;

  SelectNetworkModel({
    required this.image,
    required this.name,
  });

  factory SelectNetworkModel.fromMap(Map<String, dynamic> json) =>
      SelectNetworkModel(
        image: json["image"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "image": image,
        "name": name,
      };
}
