import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';
import 'package:ui_tutorial/view/pages/life_skill_page/lession.dart';
import 'package:ui_tutorial/view/widgets/commonly_used/common_app_bar.dart';
import 'package:ui_tutorial/view/widgets/main_scafold/common_scafold_bg.dart';

class LifeSkills extends StatelessWidget {
  const LifeSkills({super.key});

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
          child: const CommonAppBar(),
        ),
        Text(
          'Life Skills - Understanding \nYourself - 1 (English)',
          style: GoogleFonts.mulish(
            color: Colors.white,
            fontSize: context.screenWidth(width: 20),
            fontWeight: FontWeight.w900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: context.screenWidth(width: 30),
              right: context.screenWidth(width: 30)),
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: double.infinity,
                  height: context.screenHeight(heigth: 104),
                  decoration: BoxDecoration(
                    color: const Color(0xff191b05),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      const BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          offset: Offset(1, 1)),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ListTile(
                      title: Text(
                        'Facilitator Manual - Understanding \nYourself ${index + 1}',
                        style: GoogleFonts.mulish(
                          color: Colors.white,
                          fontSize: context.screenHeight(heigth: 14),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      subtitle: Text(
                        'Status: Not Started \nDuration:',
                        style: GoogleFonts.mulish(
                            color: const Color(0xff8E8E8E),
                            fontSize: context.screenWidth(width: 9),
                            fontWeight: FontWeight.w400,
                            height: 2),
                      ),
                      trailing: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LessionPage()));
                        },
                        child: const Image(
                          image: AssetImage(
                              'assets/icons/icon _document download_.png'),
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return spaceBw(height: context.screenHeight(heigth: 21));
              },
              itemCount: 5),
        )
      ],
    ));
  }
}
