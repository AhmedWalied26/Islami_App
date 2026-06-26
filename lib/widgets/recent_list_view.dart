import 'package:flutter/material.dart';
import 'package:islami_app/widgets/recent_item.dart';

class RecentListView extends StatelessWidget {
  const RecentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: .horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: 10,
        itemBuilder: (context, index) => RecentItem(),
      ),
    );
  }
}
