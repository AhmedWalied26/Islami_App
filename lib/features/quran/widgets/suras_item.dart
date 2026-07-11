import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/suras_model.dart';
import 'package:islami_app/models/text_style_model.dart';

class SurasItem extends StatelessWidget {
  final SurasModel model;
  final String index;
  const SurasItem({super.key, required this.model, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      leading: Stack(
        alignment: .center,
        children: [
          Image.asset('assets/images/sura_list.png'),
          Text(
            index,
            style: bulidTextStyle(
              TextStyleModel(fontSize: 15, color: AppColors.white),
            ),
          ),
        ],
      ),
      title: Text(
        model.english,
        style: bulidTextStyle(
          TextStyleModel(fontSize: 20, color: AppColors.white),
        ),
      ),
      subtitle: Text(
        model.number,
        style: bulidTextStyle(
          TextStyleModel(fontSize: 14, color: AppColors.white),
        ),
      ),
      trailing: Text(
        model.arabic,
        style: bulidTextStyle(
          TextStyleModel(fontSize: 20, color: AppColors.white),
        ),
      ),
    );
  }
}
