import 'package:flutter/material.dart';
import 'package:flutter_education_app/flutter_screen/textcontainer.dart';

class FlutterScreen extends StatelessWidget {
  const FlutterScreen({super.key});

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
        children: [
          Container(
            margin: const EdgeInsets.all(17),
            width: 0,
            height: 200,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(17)),
                child: Image.asset(
                    "lib/assets/img/flutter_screen/get-started-flutter-banner-small.png")),
          ),
          const TextContainer(
            text: "What\'s Flutter?",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text:
                  "Flutter is an open source framework developed and supported by Google. Frontend and full-stack developers use Flutter to build an application’s user interface (UI) for multiple platforms with a single codebase.",
              textFamily: "myFont2",
              textSize: 24),
          const Divider(
            height: 30,
            indent: 40,
            endIndent: 40,
            color: Colors.black,
          ),
          const TextContainer(
            text: "What programming language does Flutter use?",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text:
                  "Flutter uses the open-source programming language Dart, which was also developed by Google. Dart is optimized for building UIs, and many of Dart’s strengths are used in Flutter.",
              textFamily: "myFont2",
              textSize: 24),
          const Divider(
            height: 30,
            indent: 40,
            endIndent: 40,
            color: Colors.black,
          ),
          const TextContainer(
            text: "What are widgets in Flutter?",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text:
                  "In Flutter, developers build UI layouts by using widgets. This means everything a user sees on a screen, from windows and panels to buttons and text, are made of widgets.",
              textFamily: "myFont2",
              textSize: 24),
          const Divider(
            height: 30,
            indent: 40,
            endIndent: 40,
            color: Colors.black12,
          ),
          const TextContainer(
              text:
                  "Flutter widgets are designed so developers can easily customize them. Flutter achieves this through a composition approach. This means most widgets are made up of smaller widgets, and the most basic widgets have specific purposes. This allows developers to combine or edit widgets to create new ones.",
              textFamily: "myFont2",
              textSize: 24),
          const Divider(
            height: 30,
            indent: 40,
            endIndent: 40,
            color: Colors.black,
          ),
          const TextContainer(
            text: "How is Flutter supported?",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text:
                  "Flutter is supported by Google and an active open source community on Reddit, Discord, Slack, Stack Overflow, and Gitter. Google has consistently updated Flutter since its release in 2018, including with a Flutter 3 update in 2022 which extended stable support to macOS and Linux",
              textFamily: "myFont2",
              textSize: 24),
          const Divider(
            height: 30,
            indent: 40,
            endIndent: 40,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/DartScreen");
                  },
                  child: Container(
                    //margin: EdgeInsets.symmetric(horizontal: 15),
                    height: 100,
                    width: 160,
                    decoration: const BoxDecoration(
                        color: Color(0xFF042B59),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 20,
                          bottom: 35,
                          child: Image.asset(
                            "lib/assets/img/dart_screen/f42dede2-24fa-44de-90b6-392c3dfabf5a-removebg-preview.png",
                            scale: 3.5,
                          ),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(width: 0),
              MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/WidgetScreen");
                  },
                  child: Container(
                    //margin: EdgeInsets.symmetric(horizontal: 15),
                    height: 100,
                    width: 160,
                    decoration: const BoxDecoration(
                        color: Color(0xFF042B59),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 9,
                          bottom: 20,
                          child: Row(children: [
                            Image.asset(
                              "lib/assets/img/flutter_screen/whiteWidget.png",
                              scale: 7.5,
                            ),
                            const Text(
                              "Widgets",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )
                          ]),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}