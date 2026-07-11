import 'package:flutter/material.dart';
import 'package:islami_app/features/quran/widgets/most_recent_text.dart';
import 'package:islami_app/features/quran/widgets/recent_list_view.dart';

class MostRecentWidget extends StatelessWidget {
  const MostRecentWidget({super.key});
  // final List<int> mostRecentList;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        MostRecentText(text: 'Most Recent'),
        RecentListView(),
      ],
    );
  }
}
