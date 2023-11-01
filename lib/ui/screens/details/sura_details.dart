import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/details_screen_args.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_theme.dart';

class SuraDetails extends StatefulWidget {
  static const routeName = "details";

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String fileContent = "";

  late DetailsScreenArgs argument;

  @override
  Widget build(BuildContext context) {
    argument = ModalRoute.of(context)!.settings.arguments as DetailsScreenArgs;

    if (fileContent.isEmpty) {
      readFiles();
    }

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.background),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          centerTitle: true,
          title: const Text(
            "Islami",
            style: AppTheme.appBarTitleTextStyle,
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColors.contentBackground,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          argument.title,
                          style: AppTheme.afterLogo
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                        const Divider(
                          color: AppColors.primaryColor,
                          thickness: 1,
                        ),
                        const SizedBox(height: 14),
                        fileContent.isEmpty
                            ? const Center(
                                child: CircularProgressIndicator(
                                    color: AppColors.primaryColor),
                              )
                            : Expanded(
                                child: SingleChildScrollView(
                                  child: Text(
                                    fileContent,
                                    style: AppTheme.afterLogo
                                        .copyWith(fontSize: 20),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void readFiles() async {
    String file =
        await rootBundle.loadString('assets/files/quran/${argument.fileName}');
    fileContent = file;

    List<String> fileLines = file.split("\n");
    for (int i = 0; i < fileLines.length; i++) {
      fileLines[i] += "(${i + 1})  ";
    }

    fileContent = fileLines.join();

    setState(() {});
  }
}
