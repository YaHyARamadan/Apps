import 'package:flutter/material.dart';
import 'package:flutter_education_app/flutter_screen/textcontainer.dart';
import 'package:flutter_education_app/widets_screen/text_url.dart';
import '../clipboard.dart';

class ElevatedButtonScreen extends StatelessWidget {
  const ElevatedButtonScreen({super.key});

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
            child: const Text("Elevated Button",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                    color: Colors.white,
                    height: 0.8)),
          ),
          const TextContainer(
            text: "Elevated Button",
            textFamily: "myFont1",
            textSize: 30,
          ),
          const TextContainer(
              text:
                  "Use elevated buttons to add dimension to otherwise mostly flat layouts, e.g. in long busy lists of content, or in wide spaces. Avoid using elevated buttons on already-elevated content such as dialogs or cards.",
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
                "This sample produces an enabled and a disabled ElevatedButton.",
            textFamily: "myFont1",
            textSize: 24,
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 400,
              child: Image.asset(
                "lib/assets/img/Widget_screen/Elevated Button.jpg",
                scale: 1,
              )),
          const SizedBox(height: 5),
          const ClipboardContainer(text: """import 'package:flutter/material.dart';

/// Flutter code sample for [ElevatedButton].

void main() => runApp(const ElevatedButtonExampleApp());

class ElevatedButtonExampleApp extends StatelessWidget {
  const ElevatedButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ElevatedButton Sample')),
        body: const ElevatedButtonExample(),
      ),
    );
  }
}

class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({super.key});

  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: null,
            child: const Text('Disabled'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}

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
              text: "child\nonPressed\nonLongPress\niconAlignment\nstyle",
              textFamily: "myFont2",
              textSize: 24),
          const TextUrl(
            url:
                'https://api.flutter.dev/flutter/material/ElevatedButton-class.html#instance-properties',
          )
        ],
      ),
    );
  }
}