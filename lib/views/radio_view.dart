import 'package:flutter/material.dart';
import 'package:islami_app/widgets/radio_list_view.dart';
import 'package:islami_app/widgets/radio_tabs.dart';
import 'package:islami_app/widgets/reciters_list_view.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

int selectedIndex = 0;

class _RadioViewState extends State<RadioView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        RadioTabs(
          selextedIndex: selectedIndex,
          onTapSwicth: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        const SizedBox(height: 16),
        selectedIndex == 0 ? RadioListView() : RecitersListView(),
        SizedBox(height: 8),
      ],
    );
  }
}
