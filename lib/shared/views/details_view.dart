import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';
import 'package:islami_app/shared/widgets/body_details_view.dart';

class DetailsView extends StatelessWidget {
  final String englishSura;
  final String arabicSura;
  final String suraNumber;

  const DetailsView({
    super.key,
    required this.englishSura,
    required this.arabicSura,
    required this.suraNumber,
  });

  static const routePath = 'detailsView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.gold),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          englishSura,
          style: bulidTextStyle(TextStyleModel(fontSize: 20)),
        ),
      ),
      backgroundColor: AppColors.backGroundColor,
      body: BodyDetailsView(
        arabicSura: arabicSura,
        englishSura: englishSura,
        suraNumber: suraNumber,
      ),
      bottomNavigationBar: Image.asset('assets/images/details_bottom.png'),
    );
  }
}
