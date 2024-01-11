import 'package:flutter/material.dart';

extension DynamicSizes on BuildContext {
  double screenHeight({required double heigth}) {
    return MediaQuery.sizeOf(this).height * (heigth / 1004);
  }

  double screenWidth({required double width}) {
    return MediaQuery.sizeOf(this).width * (width / 467);
  }
}

SizedBox spaceBw({double height = 0, double width = 0}) {
  return SizedBox(height: height, width: width);
}
