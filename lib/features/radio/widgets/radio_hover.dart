import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

Widget buildHoverButton({
  required int index,
  required Function(int index) onTap,
  required String title,
  required int selectedIndex,
}) {
  bool isSelected = selectedIndex == index;

  return GestureDetector(
    onTap: () {
      onTap(index);
    },
    child: AnimatedContainer(
      padding: EdgeInsets.symmetric(vertical: 11, horizontal: 75),
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.gold : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        style: bulidTextStyle(
          TextStyleModel(
            color: isSelected ? AppColors.backGroundColor : AppColors.white,
          ),
        ),
      ),
    ),
  );
}
