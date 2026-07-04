import 'package:flutter/material.dart';
import 'package:islami_app/features/radio/widgets/radio_item.dart';

class RadioListView extends StatelessWidget {
  const RadioListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (_, index) => SizedBox(height: 16),
        itemCount: 10,
        itemBuilder: (_, index) => RadioItem(title: 'Radio Ibrahim Al-Akdar'),
      ),
    );
  }
}
