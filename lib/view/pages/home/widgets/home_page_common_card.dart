import 'package:flutter/material.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';

class HomePageCommonCard extends StatelessWidget {
  const HomePageCommonCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: context.screenHeight(heigth: 20)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff15150E), Color.fromARGB(0, 67, 70, 37)])),
      width: context.screenWidth(width: 385),
      height: context.screenHeight(heigth: 185),
      child: child,
    );
  }
}
