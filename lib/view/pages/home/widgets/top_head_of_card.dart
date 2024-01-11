import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';
import 'package:ui_tutorial/view/pages/home/widgets/home_page_common_card.dart';

class TopHeadOfCard extends StatelessWidget {
  TopHeadOfCard(
      {super.key,
      required this.child,
      required this.subTitle,
      required this.title,
      this.imgBlur = false});
  Widget child;
  String title;
  String subTitle;
  bool imgBlur;

  @override
  Widget build(BuildContext context) {
    return HomePageCommonCard(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                context.screenWidth(width: 33),
                context.screenWidth(width: 27),
                context.screenWidth(width: 34),
                0),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.mulish(
                        fontSize: context.screenWidth(width: 17),
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.6,
                        color: const Color(0xff92EE66)),
                  ),
                  spaceBw(height: 9),
                  Text(
                    subTitle,
                    style: GoogleFonts.mulish(
                        color: const Color(0xffBBBBBB),
                        fontSize: context.screenWidth(width: 10),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  )
                ],
              ),
              const Spacer(),
              CircleAvatar(
                radius: context.screenWidth(width: 15),
                backgroundImage: !imgBlur
                    ? const AssetImage(
                        'assets/images/extras/img_arrow_right.png')
                    : const AssetImage(
                        'assets/images/extras/img_arrow_blur.png'),
              )
            ]),
          ),
          child
        ],
      ),
    );
  }
}
