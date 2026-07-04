import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/features/hadith/widgets/body_hadith_view.dart';

class HadithCarouselSlider extends StatelessWidget {
  const HadithCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: MediaQuery.sizeOf(context).height * 0.7,
        viewportFraction: 0.86,
        enlargeCenterPage: true,
        enlargeFactor: 0.15,
        enableInfiniteScroll: false,
      ),
      itemCount: 10,
      itemBuilder: (_, index, realIndex) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: BodyHadithView(),
      ),
    );
  }
}
