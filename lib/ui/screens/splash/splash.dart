import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/Home/home_tab.dart';
import 'package:islami_app/ui/utils/app_assets.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(Home.routeName);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(AppAssets.splash),
    );
  }
}
