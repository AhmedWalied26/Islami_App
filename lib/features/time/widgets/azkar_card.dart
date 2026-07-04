import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class AzkarCard extends StatelessWidget {
  const AzkarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: AppColors.gold),
        color: AppColors.backGroundColor,
      ),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Image.asset('assets/images/evening_azkar.png'),
          Text(
            'Evening Azkar',
            style: bulidTextStyle(
              TextStyleModel(fontSize: 20, color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
