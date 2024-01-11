import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_tutorial/core/page_routes/page_routs.dart';
import 'package:ui_tutorial/view/pages/onboarding_screen/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: pageRoute,
      initialRoute: OnBoardingScreen.onBoardingScreen,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.mulish().fontFamily),
    );
  }
}
