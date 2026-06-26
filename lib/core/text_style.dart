import 'package:flutter/material.dart';
import 'package:islami_app/models/text_style_model.dart';

TextStyle bulidTextStyle(TextStyleModel model) {
  return TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: model.fontSize,
    color: model.color,
  );
}
