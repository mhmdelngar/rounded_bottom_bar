import 'package:flutter/material.dart';

class IconModel {
  final int id;

  final String? icon;
  final IconData? iconData;

  IconModel({this.iconData, required this.id, this.icon})
      : assert(icon != null || iconData != null);
}
