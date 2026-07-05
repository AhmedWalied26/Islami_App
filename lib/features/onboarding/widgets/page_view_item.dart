import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/onboarding_model.dart';
import 'package:islami_app/models/text_style_model.dart';

PageViewModel buildPageViewItem(OnboardingModel model) {
  return PageViewModel(
    useScrollView: false,
    titleWidget: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(model.imagePath),
        SizedBox(height: model.spacing),
        Text(model.title, style: bulidTextStyle(TextStyleModel(fontSize: 24))),
      ],
    ),
    bodyWidget: model.subTitle != null
        ? Text(
            model.subTitle!,
            textAlign: TextAlign.center,
            style: bulidTextStyle(TextStyleModel(fontSize: 20)),
          )
        : const SizedBox.shrink(),
  );
}
