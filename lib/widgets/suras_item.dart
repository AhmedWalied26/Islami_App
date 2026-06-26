import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';
import 'package:islami_app/views/details_view.dart';

class SurasItem extends StatelessWidget {
  const SurasItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, DetailsView.routePath),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        leading: Stack(
          children: [
            Image.asset('assets/images/sura_list.png'),
            Positioned(
              top: 13,
              left: 22,
              child: Text(
                '1',
                style: bulidTextStyle(
                  TextStyleModel(fontSize: 20, color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          'Al-Fatiha',
          style: bulidTextStyle(
            TextStyleModel(fontSize: 20, color: AppColors.white),
          ),
        ),
        subtitle: Text(
          '7 Verses',
          style: bulidTextStyle(
            TextStyleModel(fontSize: 14, color: AppColors.white),
          ),
        ),
        trailing: Text(
          'الفاتحه',
          style: bulidTextStyle(
            TextStyleModel(fontSize: 20, color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
