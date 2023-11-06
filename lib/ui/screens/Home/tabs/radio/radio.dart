import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_theme.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppAssets.radioLogo),
          SizedBox(height: height * 0.07),
          const Text("إذاعة القرءان الكريم", style: AppTheme.afterLogo),
          SizedBox(height: height * 0.07),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.skip_previous_rounded,
                  size: width * 0.2,
                  color: AppColors.primaryColor,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: width * 0.2,
                  color: AppColors.primaryColor,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.skip_next_rounded,
                  size: width * 0.2,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
