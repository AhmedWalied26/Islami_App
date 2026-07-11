import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/app_strings.dart';
import 'package:islami_app/core/cache/cache_helper.dart';
import 'package:islami_app/features/quran/widgets/quran_details_view.dart';
import 'package:islami_app/features/quran/widgets/suras_item.dart';
import 'package:islami_app/models/suras_model.dart';
import 'package:islami_app/shared/views/details_view.dart';

class SurasListView extends StatelessWidget {
  final List<int> filteredIndexes;
  final SurasModel model;
  const SurasListView({
    super.key,
    required this.filteredIndexes,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (_, i) {
        final index = filteredIndexes[i];
        return InkWell(
          onTap: () {
            saveLastSuraIndex(index);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return DetailsView(
                    appBarTitle: AppStrings.englishSurahs[index],
                    bodyTitle: AppStrings.arabicSuras[index],
                    body: QuranDetailsView(suraNumber: (index + 1).toString()),
                  );
                },
              ),
            );
          },
          child: SurasItem(
            index: (index + 1).toString(),
            model: SurasModel(
              arabic: AppStrings.arabicSuras[index],
              english: AppStrings.englishSurahs[index],
              number: AppStrings.numOfAya[index],
              suraNumber: index + 1,
            ),
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
    );
  }
}
