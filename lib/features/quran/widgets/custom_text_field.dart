import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class CustomTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const CustomTextField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: .text,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\u0600-\u06FF\s]')),
      ],
      style: TextStyle(color: AppColors.white),
      cursorColor: AppColors.darkGold,
      onChanged: onChanged,
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
