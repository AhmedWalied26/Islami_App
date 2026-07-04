import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/app_strings.dart';
import 'package:islami_app/features/quran/widgets/suras_item.dart';
import 'package:islami_app/models/suras_model.dart';

class SurasListView extends StatelessWidget {
  final List<int> filteredIndexes;
  const SurasListView({super.key, required this.filteredIndexes});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (_, i) {
          final index = filteredIndexes[i];
          return SurasItem(
            index: (index + 1).toString(),
            model: SurasModel(
              arabic: AppStrings.arabicSuras[index],
              english: AppStrings.englishSurahs[index],
              number: AppStrings.numOfAya[index],
              suraNumber: index + 1,
            ),
          );
        },
        separatorBuilder: (_, index) => Divider(
          color: AppColors.white,
          indent: 45,
          endIndent: 45,
          thickness: 1,
        ),
        itemCount: filteredIndexes.length,
      ),
    );
  }
}
