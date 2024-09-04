import 'package:flutter/material.dart';
import 'package:flutter_education_app/flutter_screen/textcontainer.dart';
import 'package:flutter_education_app/widets_screen/text_url.dart';
import '../clipboard.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

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
              color: const Color(0xFF042B59),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text("Container",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                    color: Colors.white,
                    height: 0.8)),
          ),
          const TextContainer(
            text: "Container",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text:
                  "A convenience widget that combines common painting, positioning, and sizing widgets.",
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
                "This example shows a 48x48 amber square (placed inside a Center widget in case the parent widget has its own opinions regarding the size that the Container should take), with a margin so that it stays away from neighboring widgets:",
            textFamily: "myFont1",
            textSize: 24,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 200,
              child: Image.asset(
                "lib/assets/img/Widget_screen/container_a.png",
                scale: 1,
              )),
          const SizedBox(height: 5),
          const ClipboardContainer(
              text:
                  """Center(                                                                                     
  child: Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.amber[600],
    width: 48.0,
    height: 48.0,
  ),
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
                  "width\nheight\ncolor\ndecoration\nchild\nmargin\npadding\nchild",
              textFamily: "myFont2",
              textSize: 24),
          const TextUrl(
            url:
                'https://api.flutter.dev/flutter/widgets/Container-class.html#instance-properties',
          )
        ],
      ),
    );
  }
}