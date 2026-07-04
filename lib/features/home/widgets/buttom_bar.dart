import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/features/home/widgets/custom_bottom_bar.dart';
import 'package:islami_app/models/text_style_model.dart';

class ButtomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const ButtomBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: .fixed,
      backgroundColor: AppColors.gold,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedLabelStyle: bulidTextStyle(
        TextStyleModel(fontSize: 12, color: AppColors.black),
      ),
      showUnselectedLabels: false,
      selectedItemColor: AppColors.white,
      unselectedItemColor: AppColors.black,
      items: [
        BottomNavigationBarItem(
          label: 'Quran',
          icon: buildIcon(
            imagePath: 'assets/images/sura_name_icon.png',
            isSlected: currentIndex == 0,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Hadith',
          icon: buildIcon(
            imagePath: 'assets/icons/hadith_icon.png',
            isSlected: currentIndex == 1,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Sebha',
          icon: buildIcon(
            imagePath: 'assets/icons/sebha_icon.png',
            isSlected: currentIndex == 2,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Radio',
          icon: buildIcon(
            imagePath: 'assets/icons/redio_icon.png',
            isSlected: currentIndex == 3,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Time',
          icon: buildIcon(
            imagePath: 'assets/icons/time_icon.png',
            isSlected: currentIndex == 4,
            size: 28,
          ),
        ),
      ],
    );
  }
}
