import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/features/time/widgets/pray_time_bottom.dart';
import 'package:islami_app/features/time/widgets/pray_time_top.dart';
import 'package:islami_app/features/time/widgets/time_carousel_slider.dart';

class PrayTimeItem extends StatelessWidget {
  const PrayTimeItem({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: AppColors.brown,
        image: DecorationImage(
          fit: .fill,
          image: AssetImage('assets/images/time_image.png'),
        ),
      ),
      child: Column(
        spacing: height * 0.028,
        children: [PrayTimeTop(), TimeCarouselSlider(), PrayTimeBottom()],
      ),
    );
  }
}
