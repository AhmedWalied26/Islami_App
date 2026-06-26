import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';

Widget buildIcon({
  required String imagePath,
  required bool isSlected,
  double size = 24,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    decoration: BoxDecoration(
      color: isSlected
          ? AppColors.backGroundColor.withValues(alpha: 0.6)
          : Colors.transparent,
      borderRadius: BorderRadius.circular(66),
    ),
    child: ImageIcon(
      AssetImage(imagePath),
      size: isSlected ? 22 : size,
      color: isSlected ? AppColors.white : AppColors.black,
    ),
  );
}
