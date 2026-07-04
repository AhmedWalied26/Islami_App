import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class BodyDetailsView extends StatefulWidget {
  final String suraNumber;
  final String arabicSura;
  final String englishSura;

  const BodyDetailsView({
    super.key,
    required this.arabicSura,
    required this.englishSura,
    required this.suraNumber,
  });

  @override
  State<BodyDetailsView> createState() => _BodyDetailsViewState();
}

class _BodyDetailsViewState extends State<BodyDetailsView> {
  String suraContent = '';

  @override
  void initState() {
    super.initState();
    loadSura();
  }

  Future<void> loadSura() async {
    suraContent = await rootBundle.loadString(
      'assets/files/quran/${widget.suraNumber}.txt',
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 18, left: 18, top: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              crossAxisAlignment: .start,
              children: [
                Image.asset('assets/images/details_left_corner.png'),
                Text(
                  widget.arabicSura,
                  style: bulidTextStyle(TextStyleModel(fontSize: 24)),
                ),
                Image.asset('assets/images/details_right_corner.png'),
              ],
            ),
            suraContent.isEmpty
                ? CircularProgressIndicator(color: AppColors.gold)
                : Text(
                    textAlign: .center,
                    textDirection: .rtl,
                    suraContent,
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.gold,
                      fontWeight: .w700,
                      height: 2,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
