import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';

class RadioCard extends StatelessWidget {
  const RadioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      width: .infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: .contain,
          alignment: .bottomCenter,
          image: AssetImage('assets/images/radio_mosq_bg.png'),
        ),
        color: AppColors.gold,
        borderRadius: .circular(20),
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: .spaceEvenly,
        children: [
          Text(
            'Radio Ibrahim Al-Akdar',
            style: TextStyle(
              fontSize: 20,
              fontWeight: .w700,
              color: AppColors.backGroundColor,
            ),
          ),
          Row(
            mainAxisAlignment: .center,
            children: [
              Icon(Icons.play_arrow_rounded, size: 50),
              Icon(Icons.volume_up_rounded, size: 35),
            ],
          ),
        ],
      ),
    );
  }
}
