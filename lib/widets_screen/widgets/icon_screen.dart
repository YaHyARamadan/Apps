import 'package:flutter/material.dart';

import '../../flutter_screen/textcontainer.dart';
import '../clipboard.dart';
import '../text_url.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

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
            child: const Text("Icon",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                    color: Colors.white,
                    height: 0.8)),
          ),
          const TextContainer(
            text: "Icon",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text:
                  "A graphical icon widget drawn with a glyph from a font described in an IconData such as material's predefined IconDatas in Icons.",
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
                "This example shows how to create a Row of Icons in different colors and sizes. The first Icon uses a semanticLabel to announce in accessibility modes like TalkBack and VoiceOver.",
            textFamily: "myFont1",
            textSize: 24,
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 100,
              child: Image.asset(
                "lib/assets/img/Widget_screen/icon-removebg-preview.png",
                scale: 1,
              )),
          const SizedBox(height: 5),
          const ClipboardContainer(text: """const Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[
    Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    Icon(
      Icons.audiotrack,
      color: Colors.green,
      size: 30.0,
    ),
    Icon(
      Icons.beach_access,
      color: Colors.blue,
      size: 36.0,
    ),
  ],
)
"""),
          const SizedBox(height: 20),
          const Divider(
            height: 30,
            indent: 40,
            endIndent: 40,
            color: Colors.black,
          ),
          const TextContainer(
            text: "Properties",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text: "Icons\ncolor\nsize\nfill\nweight",
              textFamily: "myFont2",
              textSize: 24),
          const TextUrl(
            url:
                'https://api.flutter.dev/flutter/widgets/Icon-class.html#instance-properties',
          )
        ],
      ),
    );
  }
}