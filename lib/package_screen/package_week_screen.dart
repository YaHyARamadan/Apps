import 'package:flutter/material.dart';
import 'package:flutter_education_app/flutter_screen/textcontainer.dart';
import 'package:flutter_education_app/package_screen/package_section.dart';

class PackageWeekScreen extends StatefulWidget {
  const PackageWeekScreen({super.key});

  @override
  State<PackageWeekScreen> createState() => _PackageWeekScreenState();
}

class _PackageWeekScreenState extends State<PackageWeekScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0553B1),
        centerTitle: true,
        title: Image.asset(
          "lib/assets/img/firstScreenImage/whiteFl.png",
          scale: 4,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, size: 28, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 28, color: Colors.black),
          ),
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 20,
          ),
          TextContainer(
              text: "Package of the Week Flutter:",
              textSize: 30,
              textFamily: "myFont1"),
          TextContainer(
              text:
                  "The \"Package of the Week\" is a popular series introduced by the Flutter team, where they highlight a specific Flutter package that is useful for developers. Each package featured is usually well-maintained, offers valuable functionality, and can help streamline app development in Flutter. The series not only introduces the package but also demonstrates how to integrate and use it within a Flutter project.",
              textSize: 24,
              textFamily: "myFont2"),
          SizedBox(
            height: 20,
          ),
          PackageSection(
            url: 'https://pub.dev/packages/lottie',
            text: 'Lottie',
            textDescription:
                "Lottie is a mobile library for Android and iOS that parses After Effects animations exported as json",
          ),
          PackageSection(
            url: "https://pub.dev/packages/syncfusion_flutter_pdfviewer",
            text: 'Syncfusion Flutter Pdfviewer',
            textDescription:
                "The Flutter PDF Viewer plugin lets you view PDF documents seamlessly and efficiently on the Android, iOS, Web, Windows, and macOS platforms. ",
          ),
          PackageSection(
            url: "https://pub.dev/packages/clipboard",
            text: 'Clipboard',
            textDescription: "Copy Text to clipboard from your app",
          ),
          PackageSection(
            url: "https://pub.dev/packages/url_launcher",
            text: 'url Launch',
            textDescription: "To Launch Url in browser or WebViewApp",
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}