import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class RecentItem extends StatelessWidget {
  const RecentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .spaceEvenly,
              children: [
                Text(
                  'Al-Anbiya',
                  style: bulidTextStyle(
                    TextStyleModel(
                      fontSize: 24,
                      color: AppColors.backGroundColor,
                    ),
                  ),
                ),
                Text(
                  'الأنبياء',
                  style: bulidTextStyle(
                    TextStyleModel(
                      fontSize: 24,
                      color: AppColors.backGroundColor,
                    ),
                  ),
                ),
                Text(
                  '112 Verses',
                  style: bulidTextStyle(
                    TextStyleModel(
                      fontSize: 14,
                      color: AppColors.backGroundColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/images/most_recent.png', height: 125),
        ],
      ),
    );
  }
}
