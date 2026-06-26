class OnboardingModel {
  String imagePath;
  String title;
  String? subTitle;
  double spacing;

  OnboardingModel({
    required this.imagePath,
    required this.title,
    this.subTitle,
    required this.spacing,
  });
}
