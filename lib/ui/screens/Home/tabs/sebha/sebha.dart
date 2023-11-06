import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_theme.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int sebhaCounter = 0;
  int azkarLength = 0;
  double angle = 0;

  List<String> azkarNames = [
    "سبحان الله",
    "الحمدلله",
    "الله اكبر",
    "لا اله الا الله"
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: height * 0.1),
            child: Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -height * 0.09,
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.1),
                    child: Image.asset(AppAssets.sebhaHead),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    sebhaLogic();
                  },
                  child: Transform.rotate(
                    angle: angle,
                    child: Image.asset(AppAssets.sebhaLogo),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.04),
          const Text("عدد التسبيحات", style: AppTheme.afterLogo),
          SizedBox(height: height * 0.03),
          Container(
            height: height * 0.11,
            width: width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: AppColors.primaryColor.withOpacity(0.57),
            ),
            child: Center(
              child: Text(
                "$sebhaCounter",
                style: AppTheme.sebhaCounter,
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          ElevatedButton(
            onPressed: () {
              sebhaLogic();
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                backgroundColor: AppColors.primaryColor),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.09, vertical: height * 0.01),
              child: Text(
                azkarNames[azkarLength],
                style: AppTheme.azkar,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void sebhaLogic() {
    if (sebhaCounter == 33) {
      sebhaCounter = 1;
      azkarNames[azkarLength++];
      if (azkarLength > 3) {
        azkarLength = 0;
      }
    } else {
      sebhaCounter++;
    }

    angle += 30;

    setState(() {});
  }
}
