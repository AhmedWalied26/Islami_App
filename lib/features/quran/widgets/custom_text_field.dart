import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: AppColors.backGroundColor.withValues(alpha: 0.3),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.gold),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.gold),
        ),
        prefixIcon: ImageIcon(
          AssetImage('assets/images/sura_name_icon.png'),
          color: AppColors.gold,
        ),
        hintText: 'Sura Name',
        hintStyle: bulidTextStyle(TextStyleModel(color: AppColors.offWhite)),
      ),
    );
  }
}
