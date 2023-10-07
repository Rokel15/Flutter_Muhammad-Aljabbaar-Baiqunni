// To parse this JSON data, do
//
//     final Contact = ContactFromJson(jsonString);

import 'dart:convert';

Contact ContactFromJson(String str) => Contact.fromJson(json.decode(str));

String ContactToJson(Contact data) => json.encode(data.toJson());

class Contact {
  int id;
  String name;
  String phone;

  Contact({
    required this.id,
    required this.name,
    required this.phone,
  });

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    id: json["id"],
    name: json["name"],
    phone: json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "phone": phone,
  };
}
