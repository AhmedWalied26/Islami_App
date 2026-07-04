import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/features/time/widgets/azkar_grid_view.dart';
import 'package:islami_app/models/text_style_model.dart';

class AzkarItem extends StatelessWidget {
  const AzkarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 20,
      children: [
        Text(
          'Azkar',
          style: bulidTextStyle(TextStyleModel(color: AppColors.white)),
        ),
        AzkarGridView(),
        SizedBox(),
      ],
    );
  }
}
