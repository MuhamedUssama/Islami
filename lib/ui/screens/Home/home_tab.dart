import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/Home/tabs/ahadeth/ahadeth.dart';
import 'package:islami_app/ui/screens/Home/tabs/quran/quran.dart';
import 'package:islami_app/ui/screens/Home/tabs/radio/radio.dart';
import 'package:islami_app/ui/screens/Home/tabs/sebha/sebha.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_theme.dart';

class Home extends StatefulWidget {
  static const routeName = "home";

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currntIndex = 0;
  List<Widget> tabsList = [
    QuranScreen(),
    AhadethScreen(),
    SebhaScreen(),
    RadioScreen(),
  ];

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
        body: tabsList[_currntIndex],
        bottomNavigationBar: customBottomNavigationBar(),
      ),
    );
  }

  Widget customBottomNavigationBar() => BottomNavigationBar(
        currentIndex: _currntIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryColor,
        selectedItemColor: AppColors.accentColor,
        unselectedItemColor: AppColors.white,
        selectedIconTheme: const IconThemeData(size: 35),
        onTap: (index) {
          setState(() {
            _currntIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.quranIcon),
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.hadethIcon),
            ),
            label: "Ahadeth",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.sebhaIcon),
            ),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.radioIcon),
            ),
            label: "Radio",
          ),
        ],
      );
}
