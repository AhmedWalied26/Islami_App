class OnboardingModel {
  final String imagePath;
  final String title;
  final String? subTitle;
  final double spacing;

  OnboardingModel({
    required this.imagePath,
    required this.title,
    this.subTitle,
    this.spacing = 30,
  });
}
