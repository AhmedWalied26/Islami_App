import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class PrayTimeBottom extends StatelessWidget {
  const PrayTimeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.2),
      child: Row(
        spacing: width * 0.2,
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
