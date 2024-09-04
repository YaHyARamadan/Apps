import 'package:flutter/material.dart';


class TextContainer extends StatelessWidget {
  final String text;
  final String textFamily;
  final double textSize;
  const TextContainer({
    super.key, required this.text, required this.textSize, required this.textFamily,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child:  Text(
        text,
        style:  TextStyle(
            fontFamily: textFamily,
            fontSize: textSize,
        ),
      ),
    );
  }
}