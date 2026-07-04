import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/most_recent.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/features/quran/widgets/quran_details_view.dart';
import 'package:islami_app/models/suras_model.dart';
import 'package:islami_app/models/text_style_model.dart';
import 'package:islami_app/shared/views/details_view.dart';

class SurasItem extends StatelessWidget {
  final SurasModel model;
  final String index;
  const SurasItem({super.key, required this.model, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final recent = List<SurasModel>.from(MostRecent.recent.value);

        recent.removeWhere((e) => e.arabic == model.arabic);
        recent.insert(0, model);

        MostRecent.recent.value = recent;

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) {
              return DetailsView(
                appBarTitle: model.english,
                bodyTitle: model.arabic,
                body: QuranDetailsView(suraNumber: model.suraNumber.toString()),
              );
            },
          ),
        );
      },
      child: ListTile(
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
      ),
    );
  }
}
