import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/widgets/suras_item.dart';

class SurasListView extends StatelessWidget {
  const SurasListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (_, index) => SurasItem(),
        separatorBuilder: (_, index) => Divider(
          color: AppColors.white,
          indent: 45,
          endIndent: 45,
          thickness: 1,
        ),
        itemCount: 10,
      ),
    );
  }
}
