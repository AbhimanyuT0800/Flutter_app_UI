import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';
import 'package:ui_tutorial/view/pages/home/widgets/home_page_common_card.dart';
import 'package:ui_tutorial/view/pages/home/widgets/top_head_of_card.dart';
import 'package:ui_tutorial/view/widgets/commonly_used/common_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: context.screenWidth(width: 50),
              left: context.screenWidth(width: 44),
              right: context.screenHeight(heigth: 24)),
          child: CommonAppBar(),
        ),
        spaceBw(height: context.screenWidth(width: 15)),
        Container(
          margin: EdgeInsets.only(left: context.screenWidth(width: 70)),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quest',
                  style: GoogleFonts.mulish(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2.4),
                ),
                Text(
                  'Find your latest activities here',
                  style: GoogleFonts.mulish(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5),
                )
              ],
            ),
          ),
        ),
        spaceBw(height: context.screenHeight(heigth: 41)),
        Row(
          children: [
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  color: const Color(0xffD3D3D3),
                  borderRadius:
                      BorderRadius.circular(context.screenWidth(width: 10))),
              height: context.screenHeight(heigth: 618),
              width: context.screenWidth(width: 385),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TopHeadOfCard(
                    title: 'Library',
                    subTitle: 'Check out 37+ courses for you',
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: context.screenWidth(width: 34),
                          right: context.screenWidth(width: 34)),
                      child: Column(
                        children: [
                          spaceBw(height: context.screenHeight(heigth: 33)),
                          Row(
                            children: [
                              Text(
                                'Life Skills - Understanding \nYourself - 1 (Hinglish)',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.mulish(
                                    fontSize: context.screenWidth(width: 14),
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 1,
                                    color: Colors.white),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.only(bottom: 5),
                                width: context.screenWidth(width: 81),
                                height: context.screenHeight(heigth: 25),
                                decoration: BoxDecoration(
                                    color: const Color(0xff79D432),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    'start',
                                    style: GoogleFonts.mulish(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  TopHeadOfCard(
                    title: 'Community',
                    subTitle: 'Join 1+ conversations with your classmates',
                    imgBlur: true,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: context.screenWidth(width: 21),
                          right: context.screenWidth(width: 25),
                          top: context.screenHeight(heigth: 18)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: context.screenWidth(width: 48 / 2),
                            backgroundImage: const AssetImage(
                                'assets/images/avatar/img_avatar_pretty.png'),
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Marci Winkles has published a \nnew article!',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.urbanist(
                                    fontSize: context.screenWidth(width: 14),
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    height: 0),
                              ),
                              //
                              Text(
                                'Today  |  16:52 PM',
                                style: GoogleFonts.urbanist(
                                    color: const Color(0xfffe0e0e0),
                                    fontSize: context.screenWidth(width: 13),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: .2,
                                    height: 2),
                              )
                            ],
                          ),
                          const Spacer(),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/extras/img_scenery.jpg',
                                fit: BoxFit.cover,
                                width: context.screenWidth(width: 72),
                                height: context.screenWidth(width: 72),
                              ))
                        ],
                      ),
                    ),
                  ),
                  TopHeadOfCard(
                    title: 'Job',
                    subTitle: 'office Executive / Co-Ordinator',
                    imgBlur: true,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: context.screenWidth(width: 21),
                          right: context.screenWidth(width: 25),
                          top: context.screenHeight(heigth: 18)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: context.screenWidth(width: 48 / 2),
                                backgroundImage: const AssetImage(
                                    'assets/images/logos/img_logo_X.png'),
                              ),
                              spaceBw(width: context.screenWidth(width: 15)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Senior Product Designer',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.inter(
                                      fontSize: context.screenWidth(width: 16),
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  //
                                  Text(
                                    'Twitter',
                                    style: GoogleFonts.urbanist(
                                        color: Colors.white,
                                        fontSize:
                                            context.screenWidth(width: 12),
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: .2,
                                        height: 2),
                                  )
                                ],
                              ),
                              const Spacer(),
                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Text(
                                '.Part Time .Hybird',
                                style: GoogleFonts.inter(
                                    fontSize: context.screenWidth(
                                      width: 13,
                                    ),
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffD3D3D3)),
                              ),
                              spaceBw(width: context.screenHeight(heigth: 30))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer()
          ],
        )
      ],
    );
  }
}
