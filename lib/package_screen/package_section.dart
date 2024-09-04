import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageSection extends StatefulWidget {
  final String text;
  final String textDescription;
  final url;

  const PackageSection({
    super.key,
    required this.text,
    required this.textDescription,
    this.url,
  });

  @override
  _PackageSectionState createState() => _PackageSectionState();
}

class _PackageSectionState extends State<PackageSection> {
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
          onTap: () async {
            final urlLink = Uri.parse(widget.url);
            if (await canLaunchUrl(urlLink)) {
              await launchUrl(
                urlLink,
              );
            }
          },
        ),
      ),
    );
  }
}
