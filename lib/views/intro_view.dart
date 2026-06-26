import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/widgets/intro_item.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  static const String routePath = '/';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backGroundColor,
      child: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/islami_image.png', height: 171),
            IntroItem(),
          ],
        ),
      ),
    );
  }
}
