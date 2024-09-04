import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextUrl extends StatefulWidget {
  final String url;
  const TextUrl({super.key, required this.url});

  @override
  _TextUrlState createState() => _TextUrlState();
}

class _TextUrlState extends State<TextUrl> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        final urlLink = Uri.parse(widget.url);
        if (await canLaunchUrl(urlLink)){
          await launchUrl(
            urlLink,
          );
        }
      },
      child: const Text(
        "More Properties",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 28,
        ),
      ),
    );
  }
}
