import 'package:flutter/material.dart';
import 'package:flutter_education_app/flutter_screen/textcontainer.dart';
import 'package:flutter_education_app/package_screen/package_section.dart';

import 'card_section.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({super.key});

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
            alignment: Alignment.center,
            margin: const EdgeInsets.all(17),
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFF042B59),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text("FLUTTER\nWIDGETS",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                    color: Colors.white,
                    height: 0.8)),
          ),
          const TextContainer(
            text: "What\'s Widgets?",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text:
                  "Each element on the screen of the Flutter app is a widget. The view of the screen completely depends upon the choice and sequence of the widgets used to build the apps. And the structure of the code of apps is a tree of widgets. ",
              textFamily: "myFont2",
              textSize: 24),
          const Divider(
            height: 30,
            indent: 40,
            endIndent: 40,
            color: Colors.black,
          ),
          const TextContainer(
            text: "What\'s Tree Widgets?",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text:
                  "The widget tree is precisely what it sounds like—a tree structure where each node is a widget. This structure determines how your app's UI is organized and displayed. Widgets are arranged hierarchically, forming a parent-child relationship.",
              textFamily: "myFont2",
              textSize: 24),
          SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(17),
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFF042B59),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
                "lib/assets/img/Widget_screen/widgettree-removebg-preview.png"),
          ),
          const Divider(
            height: 30,
            indent: 40,
            endIndent: 40,
            color: Colors.black,
          ),
          const TextContainer(
            text: "Top Flutter Widgets ",
            textFamily: "myFont1",
            textSize: 30,
          ),
          SizedBox(height: 15),
          CardSection(
              route: "/ScaffoldScreen",
              text: "Scaffold",
              textDescription:
                  "Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets."),
          CardSection(
              route: "/AppBarScreen",
              text: "AppBar",
              textDescription:
                  "Container that displays content and actions at the top of a screen."),
          CardSection(
              route: "/IconScreen",
              text: "Icon",
              textDescription: "A Material Design icon."),
          CardSection(
              route: "/TextScreen",
              text: "Text",
              textDescription: "A run of text with a single style."),
          CardSection(
              route: "/ColumnScreen",
              text: "Column",
              textDescription:
                  "Layout a list of child widgets in the vertical direction."),
          CardSection(
              route: "/RowScreen",
              text: "Row",
              textDescription:
                  "Layout a list of child widgets in the horizontal direction.."),
          CardSection(
              route: "/ContainerScreen",
              text: "Container",
              textDescription:
                  "A convenience widget that combines common painting, positioning, and sizing widgets."),
          CardSection(
              route: "/ImageScreen",
              text: "IMAGE",
              textDescription: "A widget that displays an image."),
          CardSection(
              route: "/ElevatedButtonScreen",
              text: "Elevated Button",
              textDescription:
                  "A Material Design elevated button. A filled button whose material elevates when pressed."),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
