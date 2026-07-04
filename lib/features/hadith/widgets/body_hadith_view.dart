import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/hadith_model.dart';
import 'package:islami_app/models/text_style_model.dart';

class BodyHadithView extends StatelessWidget {
  const BodyHadithView({super.key, required this.model});
  final HadithModel model;

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
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/details_left_corner.png',
                        color: AppColors.backGroundColor,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        textAlign: .center,
                        model.title,
                        style: bulidTextStyle(
                          TextStyleModel(
                            fontSize: 19,
                            color: AppColors.backGroundColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/details_right_corner.png',
                        color: AppColors.backGroundColor,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    maxLines: 16,
                    overflow: TextOverflow.ellipsis,
                    textDirection: TextDirection.rtl,
                    textAlign: .center,
                    model.content,
                    style: TextStyle(
                      fontWeight: .w700,
                      fontSize: 16,
                      color: AppColors.backGroundColor,
                      height: 1.8,
                    ),
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
