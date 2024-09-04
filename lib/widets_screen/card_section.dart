import 'package:flutter/material.dart';

class CardSection extends StatefulWidget {
  final String text;
  final String? route;
  final String textDescription;

  const CardSection({
    super.key,
    required this.text,
    required this.textDescription,
    this.route,
  });

  @override
  _PackageSectionState createState() => _PackageSectionState();
}

class _PackageSectionState extends State<CardSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Card(
        color: const Color(0xFF042B59),
        child: ListTile(
            title: Text(widget.text,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.white)),
            subtitle: Text(widget.textDescription,
                style: const TextStyle(
                    fontWeight: FontWeight.w300, color: Colors.white70)),
            onTap: () {
              Navigator.pushNamed(context, widget.route!);
            }),
      ),
    );
  }
}
