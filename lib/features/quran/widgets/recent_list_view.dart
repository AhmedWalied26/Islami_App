import 'package:flutter/material.dart';
import 'package:islami_app/core/app_strings.dart';
import 'package:islami_app/features/quran/widgets/recent_item.dart';
import 'package:islami_app/models/suras_model.dart';
import 'package:islami_app/providers/most_recent_provider.dart';
import 'package:provider/provider.dart';

class RecentListView extends StatefulWidget {
  const RecentListView({super.key});

  @override
  State<RecentListView> createState() => _RecentListViewState();
}

class _RecentListViewState extends State<RecentListView> {
  late MostRecentProvider provider;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MostRecentProvider>(context);

    return SizedBox(
      height: 150,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: .horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: provider.mostRecentList.length,
        itemBuilder: (context, index) {
          final suraIndex = provider.mostRecentList[index];
          return RecentItem(
            mostRecentList: provider.mostRecentList,
            index: index,
            model: SurasModel(
              arabic: AppStrings.arabicSuras[index],
              english: AppStrings.englishSurahs[index],
              number: AppStrings.numOfAya[index],
              suraNumber: suraIndex + 1,
            ),
          );
        },
      ),
    );
  }
}
