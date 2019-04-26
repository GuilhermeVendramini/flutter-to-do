import 'package:flutter/material.dart';

class Task {
  final int id;
  final String title;
  final String description;
  final String image;

  Task({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.image,
  });
}
