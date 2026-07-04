import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 16,
        children: [
          const SizedBox(height: 16),
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
            style: bulidTextStyle(
              TextStyleModel(color: AppColors.white, fontSize: 36),
            ),
          ),
          Stack(
            children: [
              Image.asset('assets/images/sebha.png'),
              Positioned.fill(
                top: 230,
                child: Column(
                  children: [
                    Text(
                      'سبحان الله',
                      style: bulidTextStyle(
                        TextStyleModel(fontSize: 36, color: AppColors.white),
                      ),
                    ),
                    Text(
                      '30',
                      style: bulidTextStyle(
                        TextStyleModel(fontSize: 36, color: AppColors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
