import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String imageAsset;
  final double size;
  final String text;
  final double textSize;
  final String? route;

  CircleButton(
      {super.key,
      required this.imageAsset,
      required this.size,
      required this.text,
      required this.textSize,
      this.route});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, route!);
      },
      child: Column(
        children: [
          Container(
              //margin: EdgeInsets.symmetric(horizontal: 15),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
              child: Image.asset(
                imageAsset,
                scale: size,
              )),
          Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
