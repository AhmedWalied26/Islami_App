import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class BodyDetailsView extends StatelessWidget {
  const BodyDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18, left: 18, top: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .start,
            children: [
              Image.asset('assets/images/details_left_corner.png'),
              Text(
                'الفاتحه',
                style: bulidTextStyle(TextStyleModel(fontSize: 24)),
              ),
              Image.asset('assets/images/details_right_corner.png'),
            ],
          ),
          Text(
            textAlign: .center,
            textDirection: .rtl,
            '[1] بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ [2] الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ [3] الرَّحْمَنِ الرَّحِيمِ [4] مَالِكِ يَوْمِ الدِّينِ [5] إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ [6] اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ [7] صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين',
            style: TextStyle(
              fontSize: 20,
              color: AppColors.gold,
              fontWeight: .w700,
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
