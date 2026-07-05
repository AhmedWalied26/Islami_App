import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class PrayTimeCard extends StatelessWidget {
  const PrayTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: .topStart,
          end: .bottomEnd,
          colors: [AppColors.backGroundColor, AppColors.darkGold],
        ),
      ),
      child: Column(
        mainAxisAlignment: .spaceEvenly,
        children: [
          Text(
            'ASR',
            style: bulidTextStyle(TextStyleModel(color: AppColors.white)),
          ),
          Text(
            '04:38',
            style: bulidTextStyle(
              TextStyleModel(color: AppColors.white, fontSize: 32),
            ),
          ),
          Text(
            'PM',
            style: bulidTextStyle(TextStyleModel(color: AppColors.white)),
          ),
        ],
      ),
    );
  }
}
