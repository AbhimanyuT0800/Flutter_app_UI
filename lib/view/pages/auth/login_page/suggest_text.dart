import 'package:flutter/material.dart';

class SuggestLogin extends StatelessWidget {
  const SuggestLogin(
      {super.key, required this.mainText, required this.subText});
  final String mainText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          mainText,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          subText,
          style: const TextStyle(color: Color(0xFF00FF08)),
        )
      ],
    );
  }
}
