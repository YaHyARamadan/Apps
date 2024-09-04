import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class ClipboardContainer extends StatelessWidget {
  final String text;

  const ClipboardContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFF042B59),
            ),
            child: Text(
              text,
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: -42,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            // Add padding on both sides
            child: MaterialButton(
              height: 50,
              onPressed: () => FlutterClipboard.copy(text),
              color: Colors.white70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'Copy Code',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              ),
            ),
          ),
        )
      ],
    );
  }
}