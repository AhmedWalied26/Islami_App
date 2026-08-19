import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/features/radio/widgets/radio_card.dart';
import 'package:islami_app/features/radio/widgets/radio_list_view.dart';
import 'package:islami_app/features/radio/widgets/radio_tabs.dart';
import 'package:islami_app/features/radio/widgets/reciters_list_view.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

int selectedIndex = 0;

class _RadioViewState extends State<RadioView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.backGroundColorOp,
              borderRadius: .circular(12),
            ),
            child: TabBar(
              overlayColor: WidgetStatePropertyAll(Colors.transparent),
              labelPadding: .all(6),
              dividerColor: Colors.transparent,
              indicatorSize: .tab,
              indicator: BoxDecoration(
                color: AppColors.gold,
                borderRadius: .circular(12),
              ),
              labelStyle: TextStyle(
                color: AppColors.black,
                fontWeight: .w700,
                fontSize: 16,
              ),
              unselectedLabelStyle: TextStyle(
                color: AppColors.white,
                fontWeight: .w700,
                fontSize: 16,
              ),
              tabs: [Text('Radio'), Text('Reciters')],
            ),
          ),
          SizedBox(height: 18),
          Expanded(
            child: TabBarView(
              children: [
                ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16);
                  },
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return RadioCard();
                  },
                ),
                ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16);
                  },
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return RadioCard();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
