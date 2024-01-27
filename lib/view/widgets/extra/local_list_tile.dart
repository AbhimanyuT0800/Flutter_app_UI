import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';
import 'package:ui_tutorial/view/pages/life_skill_page/lession.dart';

class LocalListTile extends StatelessWidget {
  const LocalListTile({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LessionPage()));
        },
        child: const Image(
          image: AssetImage('assets/icons/icon _document download_.png'),
        ),
      ),
    );
  }
}
