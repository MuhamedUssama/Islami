import 'package:flutter/material.dart';
import 'package:islami_app/ui/screens/Home/home_tab.dart';
import 'package:islami_app/ui/screens/details/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Home.routeName: (_) => const Home(),
        SuraDetails.routeName: (_) => SuraDetails(),
      },
      initialRoute: Home.routeName,
    );
  }
}
