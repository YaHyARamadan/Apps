import 'package:flutter/material.dart';
import 'package:flutter_education_app/flutter_screen/textcontainer.dart';
import 'package:flutter_education_app/widets_screen/text_url.dart';
import '../clipboard.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              color: const Color(0xFF042B59),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text("Text",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                    color: Colors.white,
                    height: 0.8)),
          ),
          const TextContainer(
            text: "Text",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text:
                  "The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.",
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
                "This example shows how to display text using the Text widget with the overflow set to TextOverflow.ellipsis.",
            textFamily: "myFont1",
            textSize: 24,
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 200,
              child: Image.asset(
                "lib/assets/img/Widget_screen/text_ellipsis.png",
                scale: 0.3,
              )),
          const SizedBox(height: 5),
          const ClipboardContainer(text: """Container(
  width: 100,
  decoration: BoxDecoration(border: Border.all()),
  child: Text(overflow: TextOverflow.ellipsis, 'Hello \$_name, how are you?'))
"""),
          SizedBox(height: 20),
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
              text: "data\nstyle\ntextDirection\nruntimeType\nmaxLines",
              textFamily: "myFont2",
              textSize: 24),
          const TextUrl(
            url:
                'https://api.flutter.dev/flutter/widgets/Text-class.html#instance-properties',
          )
        ],
      ),
    );
  }
}
