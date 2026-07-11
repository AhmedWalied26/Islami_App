import 'package:flutter/material.dart';
import 'package:islami_app/core/app_colors.dart';
import 'package:islami_app/core/text_style.dart';
import 'package:islami_app/models/text_style_model.dart';
import 'package:islami_app/providers/most_recent_provider.dart';
import 'package:provider/provider.dart';

class DetailsView extends StatefulWidget {
  final String appBarTitle;
  final String bodyTitle;
  final Widget body;

  const DetailsView({
    super.key,
    required this.appBarTitle,
    required this.bodyTitle,
    required this.body,
  });

  static const routePath = 'detailsView';

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  late MostRecentProvider provider;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    provider = Provider.of<MostRecentProvider>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.gold),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          widget.appBarTitle,
          style: bulidTextStyle(TextStyleModel(fontSize: 20)),
        ),
      ),
      backgroundColor: AppColors.backGroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: width * 0.04,
            left: width * 0.04,
            top: height * 0.02,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: .start,
                children: [
                  Image.asset('assets/images/details_left_corner.png'),
                  Expanded(
                    child: Text(
                      textAlign: .center,
                      softWrap: true,
                      maxLines: 2,
                      widget.bodyTitle,
                      style: TextStyle(fontSize: 24, color: AppColors.gold),
                    ),
                  ),
                  Image.asset('assets/images/details_right_corner.png'),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: widget.body,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Image.asset('assets/images/details_bottom.png'),
    );
  }

  @override
  void dispose() {
    super.dispose();
    provider.readMostRecent();
  }
}
