import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        spacing: height * 0.02,
        children: [
          SizedBox(height: height * 0.01),
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
            style: bulidTextStyle(
              TextStyleModel(color: AppColors.white, fontSize: 36),
            ),
          ),
          Stack(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/sebha_head.png',
                    height: height * 0.08,
                  ),
                  GestureDetector(
                    onTap: onTasbeeh,
                    child: AnimatedRotation(
                      duration: Duration(milliseconds: 300),
                      turns: turns,
                      // alignment: .center,
                      child: Image.asset(
                        'assets/images/sebha_body.png',
                        height: height * 0.39,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned.fill(
                top: height * 0.23,
                child: Column(
                  children: [
                    Text(
                      text,
                      style: bulidTextStyle(
                        TextStyleModel(fontSize: 36, color: AppColors.white),
                      ),
                    ),
                    Text(
                      count.toString(),
                      style: bulidTextStyle(
                        TextStyleModel(fontSize: 36, color: AppColors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  int count = 0;
  double turns = 0;
  String text = 'سبحان الله';

  void onTasbeeh() {
    count++;
    turns += 1 / 30;

    for (int i = 0; i < 2; i++) {
      if (count == 33 && text == 'سبحان الله') {
        count = 0;
        text = 'الحمد لله';
      } else if (count == 33 && text == 'الحمد لله') {
        count = 0;
        text = 'الله اكبر';
      } else if (count == 33 && text == 'الله اكبر') {
        count = 0;
        text = 'سبحان الله';
      }
    }
    setState(() {});
  }
}
