import 'package:flutter/material.dart';
import 'package:flutter_education_app/flutter_screen/textcontainer.dart';
import 'package:flutter_education_app/widets_screen/text_url.dart';
import '../clipboard.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

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
            child: const Text("IMAGE",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                    color: Colors.white,
                    height: 0.8)),
          ),
          const TextContainer(
            text: "IMAGE",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text: "A widget that displays an image.",
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
                "he default constructor can be used with any ImageProvider, such as a NetworkImage, to display an image from the internet.",
            textFamily: "myFont1",
            textSize: 24,
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 200,
              child: Image.asset(
                "lib/assets/img/Widget_screen/owl.jpg",
                scale: 1,
              )),
          const SizedBox(height: 5),
          const ClipboardContainer(text: """const Image(  
                                                                                                       
  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
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
              text: "alignment\ncolor\nfit\nheight\nscale",
              textFamily: "myFont2",
              textSize: 24),
          const TextUrl(
            url:
                'https://api.flutter.dev/flutter/widgets/Image-class.html#instance-properties',
          )
        ],
      ),
    );
  }
}