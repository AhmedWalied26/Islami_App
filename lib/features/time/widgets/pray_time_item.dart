import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/features/time/widgets/pray_time_bottom.dart';
import 'package:islami_app/features/time/widgets/pray_time_top.dart';
import 'package:islami_app/features/time/widgets/time_carousel_slider.dart';

class PrayTimeItem extends StatelessWidget {
  const PrayTimeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: .topCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.brown,
          ),
          child: Image.asset(
            'assets/images/time_image.png',
            width: .infinity,
            fit: .cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            spacing: 30,
            children: [PrayTimeTop(), TimeCarouselSlider(), PrayTimeBottom()],
          ),
        ),
      ],
    );
  }
}
