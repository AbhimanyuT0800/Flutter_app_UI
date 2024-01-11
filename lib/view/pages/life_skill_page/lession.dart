import 'package:flutter/material.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';
import 'package:ui_tutorial/view/widgets/commonly_used/common_app_bar.dart';
import 'package:ui_tutorial/view/widgets/main_scafold/common_scafold_bg.dart';

class LessionPage extends StatelessWidget {
  const LessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              context.screenWidth(width: 44),
              context.screenWidth(width: 50),
              context.screenWidth(width: 24),
              context.screenWidth(width: 33)),
          child: const CommonAppBar(subTitle: false),
        ),
      ],
    ));
  }
}
