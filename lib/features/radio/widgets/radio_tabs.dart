import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/features/radio/widgets/radio_hover.dart';

class RadioTabs extends StatelessWidget {
  final int selextedIndex;
  final Function(int) onTapSwicth;
  const RadioTabs({
    super.key,
    required this.selextedIndex,
    required this.onTapSwicth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backGroundColor.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: RadioHover(
              selectedIndex: selextedIndex,
              index: 0,
              onTap: onTapSwicth,
              title: 'Radio',
            ),
          ),
          Expanded(
            child: RadioHover(
              selectedIndex: selextedIndex,
              index: 1,
              onTap: onTapSwicth,
              title: 'Reciters',
            ),
          ),
        ],
      ),
    );
  }
}
