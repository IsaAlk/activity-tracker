import 'package:flutter/foundation.dart';

class Dummy {
  final int userId;
  final int id;
  final String title;
  final String body;

  Dummy({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Dummy.fromJson(Map<String, dynamic> json) {
    return Dummy(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}
