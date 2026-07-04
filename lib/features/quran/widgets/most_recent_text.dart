import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class MostRecentText extends StatelessWidget {
  final String text;
  const MostRecentText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: .topStart,
      child: Text(
        text,
        style: bulidTextStyle(TextStyleModel(color: AppColors.offWhite)),
      ),
    );
  }
}
