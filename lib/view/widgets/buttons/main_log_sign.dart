import 'package:flutter/material.dart';
import 'package:ui_tutorial/core/colors/main_colors.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';

class ElevatedButttonBottom extends StatelessWidget {
  final String str;
  final void Function() onpressed;
  const ElevatedButttonBottom(
      {super.key, required this.str, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
          shadowColor: shadowColor.withOpacity(.3),
          elevation: 9,
          backgroundColor: shadowColor,
          padding: EdgeInsets.zero,
          minimumSize: Size(double.infinity, context.screenHeight(heigth: 60))),
      child: Ink(
        width: double.infinity,
        height: context.screenHeight(heigth: 60),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/img_bg/button_bg.png',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.yellow, BlendMode.color)),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Center(
          child: Text(
            str.toUpperCase(),
            style: TextStyle(
                color: const Color(0xff73FF1D),
                fontWeight: FontWeight.w900,
                fontSize: context.screenHeight(heigth: 17),
                letterSpacing: context.screenHeight(heigth: 3.36)),
          ),
        ),
      ),
    );
  }
}
