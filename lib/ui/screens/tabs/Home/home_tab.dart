import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/tabs/Home/custom_bottom_navigator_bar.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_theme.dart';

class Home extends StatefulWidget {
  static const routeName = "home";

  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currntIndex = 0;

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
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.quranLogo),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            const SizedBox(height: 14),
            const Divider(
              color: AppColors.primaryColor,
              thickness: 3,
            ),
            const Text(
              "Sora Name",
              style: AppTheme.afterLogo,
            ),
            const Divider(
              color: AppColors.primaryColor,
              thickness: 3,
            ),
          ],
        ),
        bottomNavigationBar:
            CustomBottomNavigationBar(currentIndex: currntIndex),
      ),
    );
  }
}
