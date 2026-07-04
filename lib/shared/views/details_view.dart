import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class DetailsView extends StatelessWidget {
  final String appBarTitle;
  final String bodyTitle;
  final Widget body;

  const DetailsView({
    super.key,
    required this.appBarTitle,
    required this.bodyTitle,
    required this.body,
  });

  static const routePath = 'detailsView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.gold),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          appBarTitle,
          style: bulidTextStyle(TextStyleModel(fontSize: 20)),
        ),
      ),
      backgroundColor: AppColors.backGroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 18, left: 18, top: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .start,
                children: [
                  Image.asset('assets/images/details_left_corner.png'),
                  Text(
                    bodyTitle,
                    style: bulidTextStyle(TextStyleModel(fontSize: 24)),
                  ),
                  Image.asset('assets/images/details_right_corner.png'),
                ],
              ),
              body,
            ],
          ),
        ),
      ),
      bottomNavigationBar: Image.asset('assets/images/details_bottom.png'),
    );
  }
}
