import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/features/home/views/home_view.dart';
import 'package:islami_app/features/onboarding/widgets/page_view_item.dart';
import 'package:islami_app/models/onboarding_model.dart';
import 'package:islami_app/models/text_style_model.dart';

class IntroItem extends StatelessWidget {
  IntroItem({super.key});

  final List<OnboardingModel> introData = [
    OnboardingModel(
      imagePath: 'assets/images/intro_image1.png',
      title: 'Welcome To Islami App',
      spacing: 80,
    ),
    OnboardingModel(
      imagePath: 'assets/images/intro_image2.png',
      title: 'Welcome To Islami App',
      subTitle: 'We Are Very Excited To Have You In Our Community',
      spacing: 35,
    ),
    OnboardingModel(
      imagePath: 'assets/images/intro_image3.png',
      title: 'Reading the Quran',
      subTitle: 'Read, and your Lord is the Most Generous',
      spacing: 50,
    ),
    OnboardingModel(
      imagePath: 'assets/images/intro_image4.png',
      title: 'Bearish',
      subTitle: 'Praise the name of your Lord, the Most\nHigh',
      spacing: 38,
    ),
    OnboardingModel(
      imagePath: 'assets/images/intro_image5.png',
      title: 'Holy Quran Radio',
      subTitle:
          'You can listen to the Holy Quran Radio through the application for free and easily',
      spacing: 36,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IntroductionScreen(
        dotsDecorator: DotsDecorator(
          color: AppColors.darkGrey,
          activeColor: AppColors.gold,
          activeSize: Size(18, 7),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27),
          ),
        ),
        globalBackgroundColor: AppColors.backGroundColor,
        showBackButton: true,
        showNextButton: true,
        next: Text('Next', style: bulidTextStyle(TextStyleModel())),
        back: Text('Back', style: bulidTextStyle(TextStyleModel())),
        onDone: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            HomeView.routePath,
            (route) => false,
          );
        },
        done: Text('Done', style: bulidTextStyle(TextStyleModel())),
        pages: introData.map((data) => buildPageViewItem(data)).toList(),
      ),
    );
  }
}
