import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/most_recent.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/features/quran/widgets/recent_item.dart';
import 'package:islami_app/models/suras_model.dart';
import 'package:islami_app/models/text_style_model.dart';

class RecentListView extends StatelessWidget {
  const RecentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<SurasModel>>(
      valueListenable: MostRecent.recent,
      builder: (context, recent, child) {
        if (recent.isEmpty) {
          return Column(
            children: [
              SizedBox(height: 25),
              Text(
                'No Recent Suras',
                style: bulidTextStyle(TextStyleModel(color: AppColors.white)),
              ),
              SizedBox(height: 25),
            ],
          );
        }
        return SizedBox(
          height: 150,
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: .horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: MostRecent.recent.value.length,
            itemBuilder: (context, index) =>
                RecentItem(model: MostRecent.recent.value[index]),
          ),
        );
      },
    );
  }
}
