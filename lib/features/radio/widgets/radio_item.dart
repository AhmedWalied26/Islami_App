import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class RadioItem extends StatelessWidget {
  final String title;
  const RadioItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 133,
          width: .infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.gold,
          ),
          child: Column(
            mainAxisAlignment: .spaceAround,
            children: [
              Text(
                title,
                style: bulidTextStyle(
                  TextStyleModel(
                    fontSize: 20,
                    color: AppColors.backGroundColor,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: .center,
                children: [
                  Icon(Icons.play_arrow_rounded, size: 58),
                  Icon(Icons.volume_up_rounded, size: 36),
                ],
              ),
            ],
          ),
        ),
        Positioned.fill(
          top: 30,
          child: Image.asset(
            'assets/images/details_bottom.png',
            color: AppColors.backGroundColor.withValues(alpha: 0.4),
          ),
        ),
      ],
    );
  }
}
