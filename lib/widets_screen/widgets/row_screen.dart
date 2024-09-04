import 'package:flutter/material.dart';
import 'package:flutter_education_app/flutter_screen/textcontainer.dart';
import 'package:flutter_education_app/widets_screen/text_url.dart';
import '../clipboard.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

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
            child: const Text("Row",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                    color: Colors.white,
                    height: 0.8)),
          ),
          const TextContainer(
            text: "Row",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text:
                  "A widget that displays its children in a horizontal array.",
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
                "This example divides the available space into three (horizontally), and places text centered in the first two cells and the Flutter logo centered in the third:",
            textFamily: "myFont1",
            textSize: 24,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 400,
              child: Image.asset(
                "lib/assets/img/Widget_screen/row.png",
                scale: 1,
              )),
          const SizedBox(height: 5),
          const ClipboardContainer(text: """const Row(
  children: <Widget>[
    Expanded(
      child: Text('Deliver features faster', textAlign: TextAlign.center),
    ),
    Expanded(
      child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
    ),
    Expanded(
      child: FittedBox(
        child: FlutterLogo(),
      ),
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
              text:
                  "children\nmainAxisAlignment\ncrossAxisAlignment\ndirection\nmainAxisSize",
              textFamily: "myFont2",
              textSize: 24),
          const TextUrl(
            url:
                'https://api.flutter.dev/flutter/widgets/Row-class.html#instance-properties',
          )
        ],
      ),
    );
  }
}
