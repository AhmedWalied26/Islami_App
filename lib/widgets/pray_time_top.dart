import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class PrayTimeTop extends StatelessWidget {
  const PrayTimeTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceAround,
      crossAxisAlignment: .start,
      children: [
        Text(
          '16 Jul,\n2024',
          style: bulidTextStyle(TextStyleModel(color: AppColors.white)),
        ),
        Column(
          children: [
            Text(
              'Pray Time',
              style: bulidTextStyle(
                TextStyleModel(
                  color: AppColors.backGroundColor.withValues(alpha: 0.7),
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              'Tuesday',
              style: bulidTextStyle(
                TextStyleModel(
                  color: AppColors.backGroundColor.withValues(alpha: 0.9),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        Text(
          '09 Muh,\n1446',
          style: bulidTextStyle(TextStyleModel(color: AppColors.white)),
        ),
      ],
    );
  }
}
