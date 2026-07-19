import 'package:flutter/material.dart';
import 'package:islami_app/features/time/widgets/azkar_card.dart';

class AzkarGridView extends StatelessWidget {
  const AzkarGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 21,
        childAspectRatio: 1 / 1.4,
      ),
      itemCount: 10,
      itemBuilder: (_, index) => AzkarCard(),
    );
  }
}
