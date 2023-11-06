import 'package:flutter/material.dart';
import 'package:islami_app/model/details_screen_args.dart';
import 'package:islami_app/ui/screens/details/sura_details.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_theme.dart';

class AhadethScreen extends StatelessWidget {
  final List<String> ahadethName = List.generate(50, (index) {
    return " ${index + 1} الحديث رقم";
  });

  AhadethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.hadethLogo),
              ),
            ),
          ),
        ),
        const SizedBox(height: 14),
        const Divider(
          color: AppColors.primaryColor,
          thickness: 3,
        ),
        const Text(
          "الأحاديث",
          style: AppTheme.afterLogo,
        ),
        const Divider(
          color: AppColors.primaryColor,
          thickness: 3,
        ),
        Expanded(
          flex: 7,
          child: ListView.builder(
            itemBuilder: (_, index) {
              return TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, SuraOrHadethDetails.routeName,
                      arguments: DetailsScreenArgs(
                          fileName: "h${index + 1}.txt",
                          title: ahadethName[index],
                          isQuran: false));
                },
                child: Text(
                  ahadethName[index],
                  style:
                      AppTheme.afterLogo.copyWith(fontWeight: FontWeight.w400),
                ),
              );
            },
            itemCount: ahadethName.length,
          ),
        )
      ],
    );
  }
}
