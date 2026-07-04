import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class BodyHadithView extends StatelessWidget {
  const BodyHadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.gold,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/details_left_corner.png',
                      color: AppColors.backGroundColor,
                    ),
                    Text(
                      'الحديث الأول',
                      style: bulidTextStyle(
                        TextStyleModel(
                          fontSize: 24,
                          color: AppColors.backGroundColor,
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/details_right_corner.png',
                      color: AppColors.backGroundColor,
                    ),
                  ],
                ),
                Text(
                  textAlign: .center,
                  'عن أمـيـر المؤمنـين أبي حـفص عمر بن الخطاب رضي الله عنه ، قال : سمعت رسول الله صلى الله عـليه وسلم يـقـول : ( إنـما الأعـمـال بالنيات وإنـمـا لكـل امـرئ ما نـوى . فمن كـانت هجرته إلى الله ورسولـه فهجرتـه إلى الله ورسـوله ومن كانت هجرته لـدنيا يصـيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليه ). رواه إمام المحد ثين أبـو عـبـد الله محمد بن إسماعـيل بن ابراهـيـم بن المغـيره بن بـرد زبه البخاري الجعـفي،[رقم:1] وابـو الحسـيـن مسلم بن الحجاج بن مـسلم القـشـيري الـنيسـابـوري [رقم :1907] رضي الله عنهما في صحيحيهما اللذين هما أصح الكتب المصنفه',
                  style: bulidTextStyle(
                    TextStyleModel(color: AppColors.backGroundColor),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          alignment: .bottomEnd,
          child: Image.asset(
            'assets/images/details_bottom.png',
            color: AppColors.backGroundColor.withValues(alpha: 0.8),
          ),
        ),
        Positioned.fill(child: Image.asset('assets/images/hadith_bg.png')),
      ],
    );
  }
}
