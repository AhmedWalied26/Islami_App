import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/models/hadith_model.dart';

class HadithDetailsView extends StatelessWidget {
  final HadithModel model;
  const HadithDetailsView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Text(
      model.content,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: const TextStyle(
        fontSize: 20,
        color: AppColors.gold,
        fontWeight: FontWeight.w700,
        height: 2,
      ),
    );
  }
}
