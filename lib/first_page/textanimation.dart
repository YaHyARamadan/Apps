import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Textanimat extends StatelessWidget {
  const Textanimat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText("Text(\n\"\nHello User\n\"\n)",
              speed: const Duration(milliseconds: 200)),
        ],
        repeatForever: true, // Loop indefinitely
      ),
    ));
  }
}
