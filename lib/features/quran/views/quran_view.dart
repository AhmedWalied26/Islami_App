import 'package:flutter/material.dart';
import 'package:islami_app/features/quran/widgets/custom_text_field.dart';
import 'package:islami_app/features/quran/widgets/most_recent_text.dart';
import 'package:islami_app/features/quran/widgets/recent_list_view.dart';
import 'package:islami_app/features/quran/widgets/suras_list_view.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 21),
        const CustomTextField(),
        const SizedBox(height: 20),
        const MostRecentText(text: 'Most Recently'),
        const SizedBox(height: 10),
        const RecentListView(),
        const SizedBox(height: 10),
        const MostRecentText(text: 'Suras List'),
        const SizedBox(height: 10),
        const SurasListView(),
      ],
    );
  }
}
