import 'package:flutter/material.dart';
import 'package:islami_app/core/app_strings.dart';
import 'package:islami_app/core/cache/cache_helper.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/features/quran/widgets/custom_text_field.dart';
import 'package:islami_app/features/quran/widgets/most_recent_text.dart';
import 'package:islami_app/features/quran/widgets/most_recent_widget.dart';
import 'package:islami_app/features/quran/widgets/suras_list_view.dart';
import 'package:islami_app/models/suras_model.dart';
import 'package:islami_app/models/text_style_model.dart';
import 'package:islami_app/providers/most_recent_provider.dart';
import 'package:provider/provider.dart';

class QuranView extends StatefulWidget {
  final SurasModel? model;
  const QuranView({super.key, this.model});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      provider.readMostRecent();
    });
  }

  late MostRecentProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<MostRecentProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 21),
          CustomTextField(onChanged: searchSura),
          const SizedBox(height: 20),
          notEmpty
              ? Visibility(
                  visible: provider.mostRecentList.isNotEmpty,
                  child: MostRecentWidget(),
                )
              : SizedBox(),
          notEmpty ? const SizedBox(height: 10) : SizedBox(),
          notEmpty ? const MostRecentText(text: 'Suras List') : SizedBox(),
          notEmpty ? const SizedBox(height: 10) : SizedBox(),
          filteredIndexes.isEmpty
              ? Text(
                  'No Results',
                  style: bulidTextStyle(TextStyleModel(fontSize: 22)),
                )
              : SurasListView(
                  model: SurasModel(
                    arabic: AppStrings.arabicSuras.toString(),
                    english: AppStrings.englishSurahs.toString(),
                    number: AppStrings.numOfAya.toString(),
                    suraNumber: 1 + 1,
                  ),
                  filteredIndexes: filteredIndexes,
                ),
        ],
      ),
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
