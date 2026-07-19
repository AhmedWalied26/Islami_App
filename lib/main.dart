import 'package:flutter/material.dart';
import 'package:islami_app/features/home/views/home_view.dart';
import 'package:islami_app/features/onboarding/views/intro_view.dart';
import 'package:islami_app/providers/most_recent_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(
    ChangeNotifierProvider(
      create: (context) => MostRecentProvider(),
      child: IslamiApp(),
    ),
  );
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(scrolledUnderElevation: 0),
        fontFamily: 'Janna LT',
      ),
      routes: {
        '/': (context) => IntroView(),
        HomeView.routePath: (context) => HomeView(),
      },
    );
  }
}
