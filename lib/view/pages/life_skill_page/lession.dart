import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                context.screenWidth(width: 50)),
            // 33
            child: const CommonAppBar(subTitle: false),
          ),
          Center(
            child: Container(
              width: context.screenWidth(width: 341),
              height: context.screenHeight(heigth: 652),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF31371D),
                  ),
                  BoxShadow(
                    color: Color(0xff121601),
                    spreadRadius: -5.0,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  spaceBw(
                      height: context.screenHeight(
                        heigth: 74,
                      ),
                      width: double.infinity),
                  localText('Lession Plan'),
                  spaceBw(height: context.screenHeight(heigth: 34)),
                  localText('Understanding Yourself - 1 \n10 activities'),
                  spaceBw(height: context.screenHeight(heigth: 80)),
                  localText('Facilitator Manual - Understanding \nYourself 1'),
                  spaceBw(height: context.screenHeight(heigth: 13)),
                  localText('Facilitator Manual - Understanding \nYourself 1'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Text localText(String str) {
    return Text(
      str,
      textAlign: TextAlign.center,
      style: GoogleFonts.mulish(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
    );
  }
}
