import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';
import 'package:ui_tutorial/view/widgets/commonly_used/common_app_bar.dart';
import 'package:ui_tutorial/view/widgets/main_scafold/common_scafold_bg.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
        body: Padding(
      padding: EdgeInsets.only(
          top: context.screenHeight(heigth: 50),
          left: context.screenWidth(width: 45)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                right: context.screenWidth(width: 24),
                bottom: context.screenHeight(heigth: 29)),
            child: const CommonAppBar(),
          ),
          Text(
            'Welcome to your Community',
            style: GoogleFonts.mulish(
                fontSize: context.screenHeight(heigth: 22),
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: 2),
          ),
          spaceBw(height: context.screenHeight(heigth: 13)),
          SizedBox(
            width: context.screenWidth(width: 275),
            height: context.screenHeight(heigth: 45),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Type your question here...',
                  hintStyle: GoogleFonts.mulish(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      color: const Color(0xffA8A8A8)),
                  border: const OutlineInputBorder(),
                  suffixIcon: Container(
                    width: context.screenHeight(heigth: 40),
                    height: context.screenHeight(heigth: 40),
                    decoration: const BoxDecoration(
                        // color: Colors.amber,
                        // image: DecorationImage(
                        //     image:
                        //         AssetImage('assets/icons/more_icons/ic_search.png'),
                        //     fit: BoxFit.cover),
                        ),
                    child: const Image(
                      image: AssetImage(
                        'assets/icons/more_icons/ic_search.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          )
        ],
      ),
    ));
  }
}
