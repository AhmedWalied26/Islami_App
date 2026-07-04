import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/features/hadith/widgets/hadith_carousel_slider.dart';
import 'package:islami_app/models/hadith_model.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  List<HadithModel> hadiths = [];

  @override
  void initState() {
    super.initState();
    loadHadiths();
  }

  Future<void> loadHadiths() async {
    hadiths.clear();

    for (int i = 1; i <= 50; i++) {
      final text = await rootBundle.loadString('assets/files/hadith/h$i.txt');

      final lines = text.split('\n');

      hadiths.add(
        HadithModel(
          title: lines.first,
          content: lines.skip(1).join('\n'),
          number: i,
        ),
      );
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (hadiths.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.gold),
      );
    }
    return HadithCarouselSlider(hadiths: hadiths);
  }
}
