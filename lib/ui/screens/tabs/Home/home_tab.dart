import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_theme.dart';

class Home extends StatelessWidget {
  static const routeName = "home";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.background),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          centerTitle: true,
          title: const Text(
            "Islami",
            style: AppTheme.appBarTitleTextStyle,
          ),
          elevation: 0,
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
