import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/app_strings.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/features/quran/widgets/quran_details_view.dart';
import 'package:islami_app/models/suras_model.dart';
import 'package:islami_app/models/text_style_model.dart';
import 'package:islami_app/shared/views/details_view.dart';

class RecentItem extends StatelessWidget {
  const RecentItem({
    super.key,
    required this.model,
    required this.index,
    required this.mostRecentList,
  });
  final SurasModel model;
  final int index;
  final List<int> mostRecentList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) {
              return DetailsView(
                appBarTitle: AppStrings.englishSurahs[mostRecentList[index]],
                bodyTitle: AppStrings.arabicSuras[mostRecentList[index]],
                body: QuranDetailsView(suraNumber: model.suraNumber.toString()),
              );
            },
          ),
        );
      },
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: AppColors.gold,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Column(
                crossAxisAlignment: .start,
                mainAxisAlignment: .spaceEvenly,
                children: [
                  Text(
                    AppStrings.englishSurahs[mostRecentList[index]],
                    style: bulidTextStyle(
                      TextStyleModel(
                        fontSize: 24,
                        color: AppColors.backGroundColor,
                      ),
                    ),
                  ),
                  Text(
                    AppStrings.arabicSuras[mostRecentList[index]],
                    style: bulidTextStyle(
                      TextStyleModel(
                        fontSize: 24,
                        color: AppColors.backGroundColor,
                      ),
                    ),
                  ),
                  Text(
                    '${AppStrings.numOfAya[mostRecentList[index]]} Verses',
                    style: bulidTextStyle(
                      TextStyleModel(
                        fontSize: 14,
                        color: AppColors.backGroundColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Image.asset('assets/images/most_recent.png')),
          ],
        ),
      ),
    );
  }
}
