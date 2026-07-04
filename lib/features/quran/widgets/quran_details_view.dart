import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/app_colors.dart';

class QuranDetailsView extends StatefulWidget {
  final String suraNumber;

  const QuranDetailsView({super.key, required this.suraNumber});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
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
    return suraContent.isEmpty
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
          );
  }
}
