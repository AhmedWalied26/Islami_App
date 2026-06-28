import 'package:flutter/material.dart';
import 'package:islami_app/widgets/azkar_item.dart';
import 'package:islami_app/widgets/pray_time_item.dart';

class TimeView extends StatelessWidget {
  const TimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 20,
      children: [
        PrayTimeItem(),
        Expanded(child: AzkarItem()),
      ],
    );
  }
}
