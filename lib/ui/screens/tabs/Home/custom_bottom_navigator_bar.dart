import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  const CustomBottomNavigationBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primaryColor,
      selectedItemColor: AppColors.accentColor,
      unselectedItemColor: AppColors.white,
      selectedIconTheme: const IconThemeData(size: 35),
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
}
