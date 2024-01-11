import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';

// ignore: must_be_immutable
class CommonAppBar extends StatelessWidget {
  CommonAppBar({super.key, this.subTitle = true});
  bool subTitle = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: context.screenHeight(heigth: 67 / 2),
          backgroundImage:
              const AssetImage('assets/images/avatar/img_avatar.jpg'),
        ),
        spaceBw(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            subTitle
                ? Text('Tesla Roadster',
                    style: GoogleFonts.mulish(
                        color: const Color.fromARGB(255, 85, 85, 85),
                        fontSize: context.screenWidth(width: 17),
                        fontWeight: FontWeight.w600))
                : const Text(''),
            Text(
              'Elina Krohnke',
              style: GoogleFonts.spaceGrotesk(
                  color: const Color(0xffEBEBEB),
                  fontSize: context.screenWidth(width: 24),
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: context.screenHeight(heigth: 67 / 2),
          backgroundImage:
              const AssetImage('assets/images/extras/settings.png'),
        )
      ],
    );
  }
}
