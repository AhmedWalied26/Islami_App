import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/views/hadith_view.dart';
import 'package:islami_app/views/quran_view.dart';
import 'package:islami_app/views/radio_view.dart';
import 'package:islami_app/views/sebha_view.dart';
import 'package:islami_app/views/time_view.dart';
import 'package:islami_app/widgets/buttom_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const String routePath = 'homeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  final List<AssetImage> backGroundImage = [
    AssetImage('assets/images/quran_view.png'),
    AssetImage('assets/images/hadith_view.png'),
    AssetImage('assets/images/sebha_view.png'),
    AssetImage('assets/images/radio_view.png'),
    AssetImage('assets/images/time_view.png'),
  ];

  final taps = [
    const QuranView(),
    const HadithView(),
    const SebhaView(),
    const RadioView(),
    const TimeView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: .topCenter,
          end: .bottomCenter,
          colors: [
            AppColors.backGroundColor,
            AppColors.backGroundColor.withValues(alpha: 0.7),
          ],
        ),
        image: DecorationImage(
          opacity: .1,
          fit: BoxFit.cover,
          image: backGroundImage[currentIndex],
        ),
      ),
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/islami_image.png',
                      height: 150,
                      width: 330,
                      fit: BoxFit.fill,
                    ),
                    Expanded(child: taps[currentIndex]),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: ButtomBar(
              currentIndex: currentIndex,
              onTap: (index) => setState(() {
                currentIndex = index;
              }),
            ),
          ),
        ],
      ),
    );
  }
}
