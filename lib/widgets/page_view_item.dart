import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/onboarding_model.dart';
import 'package:islami_app/models/text_style_model.dart';

PageViewModel buildPageViewItem(OnboardingModel model) {
  return PageViewModel(
    titleWidget: Column(
      spacing: model.spacing,
      children: [
        Image.asset(model.imagePath),
        Text(model.title, style: bulidTextStyle(TextStyleModel(fontSize: 24))),
        if (model.subTitle != null)
          Text(
            textAlign: .center,
            model.subTitle!,
            style: bulidTextStyle(TextStyleModel(fontSize: 20)),
          ),
      ],
    ),
    body: '',
  );
}
