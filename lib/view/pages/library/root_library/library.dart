import 'package:flutter/material.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';
import 'package:ui_tutorial/view/widgets/main_scafold/common_scafold_bg.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
        body: Center(
      child: Text('data'),
    ));
  }
}
