

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class UsereModel {
  final String? id;
  final String? name;
  final String? email;

  UsereModel({
    this.id,
    this.name,
    this.email,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'email': email,
      };

  static UsereModel fromJson(DocumentSnapshot map) => UsereModel(
        id:map.id,
        name: map['name']!= null?map['name'] as String :null,
        email: map['email']
      );

      String toJson()=>json.encode(toMap());
}
