import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/features/hadith/widgets/hadith_details_view.dart';
import 'package:islami_app/features/hadith/widgets/body_hadith_view.dart';
import 'package:islami_app/models/hadith_model.dart';
import 'package:islami_app/shared/views/details_view.dart';

class HadithCarouselSlider extends StatelessWidget {
  final List<HadithModel> hadiths;
  const HadithCarouselSlider({super.key, required this.hadiths});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: MediaQuery.sizeOf(context).height * 0.7,
        viewportFraction: 0.78,
        enlargeCenterPage: true,
        enlargeFactor: 0.15,
        enableInfiniteScroll: false,
      ),
      itemCount: hadiths.length,
      itemBuilder: (_, index, realIndex) {
        final model = hadiths[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsView(
                      appBarTitle: 'Hadith ${index + 1}',
                      bodyTitle: model.title,
                      body: HadithDetailsView(model: model),
                    );
                  },
                ),
              );
            },
            child: BodyHadithView(model: model),
          ),
        );
      },
    );
  }
}
