import 'package:flutter/material.dart';
import 'package:ui_tutorial/core/colors/main_colors.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';

class LogoWithTitle extends StatelessWidget {
  const LogoWithTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: context.screenWidth(width: 85),
          height: context.screenHeight(heigth: 45),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(context.screenHeight(heigth: 23)),
            color: Colors.white,
            image: const DecorationImage(
                image: AssetImage('assets/images/logos/veteran_logo.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        spaceBw(width: context.screenWidth(width: 20)),
        Text(
          'Vet-Guard',
          style: TextStyle(
            color: BasicTextColors().textWhite,
            fontSize: context.screenWidth(width: 24),
            fontWeight: FontWeight.w800,
          ),
        )
      ],
    );
  }
}
