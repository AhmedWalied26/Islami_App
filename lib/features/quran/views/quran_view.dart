import 'package:flutter/material.dart';
import 'package:islami_app/core/app_strings.dart';
import 'package:islami_app/features/quran/widgets/custom_text_field.dart';
import 'package:islami_app/features/quran/widgets/most_recent_text.dart';
import 'package:islami_app/features/quran/widgets/recent_list_view.dart';
import 'package:islami_app/features/quran/widgets/suras_list_view.dart';

class QuranView extends StatefulWidget {
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 21),
        CustomTextField(onChanged: searchSura),
        const SizedBox(height: 20),
        notEmpty ? const MostRecentText(text: 'Most Recently') : SizedBox(),
        notEmpty ? const SizedBox(height: 10) : SizedBox(),
        notEmpty ? RecentListView() : SizedBox(),
        notEmpty ? const SizedBox(height: 10) : SizedBox(),
        notEmpty ? const MostRecentText(text: 'Suras List') : SizedBox(),
        notEmpty ? const SizedBox(height: 10) : SizedBox(),
        SurasListView(filteredIndexes: filteredIndexes),
      ],
    );
  }

  bool notEmpty = true;
  List<int> filteredIndexes = List.generate(
    AppStrings.arabicSuras.length,
    (index) => index,
  );

  void searchSura(String value) {
    if (value.isNotEmpty) {
      filteredIndexes =
          List.generate(AppStrings.arabicSuras.length, (index) => index).where((
            index,
          ) {
            return AppStrings.arabicSuras[index].contains(value) ||
                AppStrings.englishSurahs[index].toLowerCase().contains(
                  value.toLowerCase(),
                );
          }).toList();
      notEmpty = false;
    } else if (value.isEmpty) {
      notEmpty = true;
      filteredIndexes = List.generate(
        AppStrings.arabicSuras.length,
        (index) => index,
      );
    }
    setState(() {});
  }
}
