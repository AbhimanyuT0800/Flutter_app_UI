import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_tutorial/core/colors/main_colors.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';
import 'package:ui_tutorial/view/pages/auth/login_page/login_page.dart';
import 'package:ui_tutorial/view/widgets/buttons/main_log_sign.dart';
import 'package:ui_tutorial/view/widgets/main_scafold/common_scafold_bg.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String onBoardingScreen = '/';
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int index = 0;

  PageController myController = PageController();

  List<Widget> imagesOnBoard = [
    Image.asset(
      'assets/images/img_bg/splash_bg.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/img_bg/splash_bg.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/img_bg/splash_bg.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/img_bg/splash_bg.jpeg',
      fit: BoxFit.cover,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
        body: Column(
      children: [
        spaceBw(height: context.screenHeight(heigth: 100)),
        SizedBox(
          height: context.screenHeight(heigth: 380),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.elliptical(
                    context.screenWidth(width: 100),
                    context.screenHeight(heigth: 20))),
                child: PageView(
                  controller: myController,
                  children: imagesOnBoard,
                  onPageChanged: (currentIndex) {
                    setState(() {
                      index = currentIndex;
                    });
                  },
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: context.screenWidth(width: 180),
                  child: Row(
                    children: [
                      for (int i = 0; i < 4; i++)
                        Container(
                          margin: const EdgeInsets.only(left: 12),
                          width: context.screenWidth(width: 11),
                          height: context.screenHeight(heigth: 11),
                          decoration: BoxDecoration(
                              color: i == index
                                  ? BasicContainerColor().containerGreen
                                  : BasicContainerColor().containerWhite,
                              borderRadius: BorderRadius.circular(20)),
                        )
                    ],
                  ))
            ],
          ),
        ),
        spaceBw(
          height: context.screenHeight(heigth: 104),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.screenWidth(width: 49)),
          child: Column(
            children: [
              Text(
                'Support verterans in their battle against suicide',
                style: TextStyle(
                    fontFamily: GoogleFonts.mulish().fontFamily,
                    fontSize: context.screenHeight(heigth: 36),
                    fontWeight: FontWeight.w800,
                    color: BasicTextColors().textWhite),
                textAlign: TextAlign.center,
              ),
              spaceBw(
                height: context.screenHeight(heigth: 60),
              ),
              ElevatedButttonBottom(
                onpressed: () {
                  Navigator.pushNamed(context, LoginPage.loginPage);
                },
                str: 'GET STARTED',
              )
            ],
          ),
        )
      ],
    ));
  }
}
