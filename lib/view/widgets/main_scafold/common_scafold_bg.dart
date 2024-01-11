import 'package:flutter/material.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';

class CommonScafold extends StatelessWidget {
  final Widget? bottomNavigationBar;
  final Widget body;
  const CommonScafold(
      {super.key, this.bottomNavigationBar, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F1301),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
          ),
          Positioned(
            right: -context.screenWidth(width: 400),
            child: Container(
              width: context.screenWidth(width: 869),
              height: context.screenHeight(heigth: 867),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFFFFE81E).withOpacity(0.3),
                    const Color(0xFFFFE81E).withOpacity(0.001),
                  ],
                ),
              ),
            ),
          ),
          body,
        ],
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
