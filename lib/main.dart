import 'package:flutter/material.dart';
import 'package:islami_app/features/home/views/home_view.dart';
import 'package:islami_app/features/onboarding/views/intro_view.dart';
import 'package:islami_app/shared/views/details_view.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Janna LT'),
      routes: {
        '/': (context) => IntroView(),
        'homeView': (context) => HomeView(),
        'detailsView': (context) => DetailsView(),
      },
    );
  }
}
