import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class RadioHover extends StatelessWidget {
  final String title;
  final int index;
  final Function(int index) onTap;
  final int selectedIndex;

  const RadioHover({
    super.key,
    required this.index,
    required this.onTap,
    required this.title,
    required this.selectedIndex,
  });

  bool get isSelected => selectedIndex == index;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(vertical: height * 0.01),
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.gold : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          textAlign: .center,
          title,
          style: bulidTextStyle(
            TextStyleModel(
              color: isSelected ? AppColors.backGroundColor : AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
