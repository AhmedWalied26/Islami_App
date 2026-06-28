import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class PrayTimeBottom extends StatelessWidget {
  const PrayTimeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 112),
      child: Row(
        spacing: 73,
        mainAxisAlignment: .center,
        children: [
          Text(
            'Next Pray - 02:32',
            style: bulidTextStyle(
              TextStyleModel(color: AppColors.backGroundColor),
            ),
          ),
          Icon(Icons.volume_off_rounded, color: AppColors.backGroundColor),
        ],
      ),
    );
  }
}
