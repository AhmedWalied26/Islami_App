import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/features/time/widgets/pray_time_card.dart';

class TimeCarouselSlider extends StatelessWidget {
  const TimeCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: MediaQuery.sizeOf(context).height * 0.13,
        enlargeCenterPage: true,
        viewportFraction: .28,
        enlargeFactor: .20,
      ),
      itemCount: 5,
      itemBuilder: (_, index, realIndex) => PrayTimeCard(),
    );
  }
}
