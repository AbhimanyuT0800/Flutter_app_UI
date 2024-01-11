import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';

class TextFieldArea extends StatelessWidget {
  const TextFieldArea({
    super.key,
    required this.title,
    required this.hintText,
    required this.inputType,
  });
  final String title;
  final String hintText;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: context.screenWidth(width: 14),
            fontFamily: GoogleFonts.inter().fontFamily,
            fontWeight: FontWeight.w700,
            letterSpacing: context.screenWidth(width: 2),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          // textAlign: TextAlign.center,
          // textAlignVertical: TextAlignVertical.center,
          keyboardType: inputType,
          obscureText: true,
          obscuringCharacter: '*',
          cursorColor: const Color((0Xff5F5F5F)),
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide.none),
            fillColor: const Color(0Xff131411),
            hintText: hintText,
            hintStyle: TextStyle(
              color: const Color((0Xff5F5F5F)),
              fontSize: context.screenWidth(width: 14),
              fontWeight: FontWeight.w700,
              letterSpacing: context.screenWidth(width: 1.9),
            ),
          ),
        ),
      ],
    );
  }
}
