import 'package:flutter/material.dart';
import 'package:flutter_education_app/dart_screen/rectangularButton.dart';

class DartScreen extends StatelessWidget {
  const DartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0553B1),
          centerTitle: true,
          title: Image.asset(
            "lib/assets/img/dart_screen/f42dede2-24fa-44de-90b6-392c3dfabf5a-removebg-preview.png",
            scale: 3,
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
              margin: const EdgeInsets.all(15),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Stack(
                children: [
                  Positioned(
                    top: 5,
                    left: -1,
                    child: Text("Dart Language",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF042B59))),
                  ),
                  Positioned(
                      left: 5,
                      top: 39,
                      child: Text(
                          "Dart is a programming language developed\nby Google,It is designed for building fast, scalable,\nand cross-platform applications, particularly web\nand mobile apps.\nDart is often associated with Flutter\nGoogle's UI toolkit for crafting natively compiled\napplications for mobile, web, and desktop.",
                          style: TextStyle(
                              fontSize: 15.2,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54))),
                ],
              ),
            ),
            const Divider(
              height: 5,
              indent: 40,
              endIndent: 40,
              color: Colors.black12,
            ),
            const SizedBox(height: 20),
            const Center(
              child: Wrap(
                runSpacing: 15,
                children: [
                  RectangularButton(
                    positLeft: 10,
                    positBottom: 45,
                    text: "INTRO DART",
                    pdfPath:
                        "lib/assets/pdf/(variables & Data Type & keywords & collection) (1).pdf",
                  ),
                  RectangularButton(
                    positLeft: 3,
                    positBottom: 30,
                    text: "CONTROLFLOW\n   EXCEPTION",
                    pdfPath:
                        "lib/assets/pdf/Controlflow&Exception&std_in_out_err (1).pdf",
                  ),
                  RectangularButton(
                    positLeft: 5,
                    positBottom: 30,
                    text: "OPERATORS IN\nDART",
                    pdfPath: "lib/assets/pdf/Operators in Dart .pdf",
                  ),
                  RectangularButton(
                    positLeft: 10,
                    positBottom: 45,
                    text: "FUNCTION",
                    pdfPath: "lib/assets/pdf/Function in dart.pdf",
                  ),
                  RectangularButton(
                    positLeft: 10,
                    positBottom: 45,
                    text: "FUNCTION 2",
                    pdfPath: "lib/assets/pdf/Function_2.pdf",
                  ),
                  RectangularButton(
                    positLeft: 10,
                    positBottom: 30,
                    text: "OOP\nCONCEPTS",
                    pdfPath: "lib/assets/pdf/OOP Concepts.pdf",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20)
          ],
        ));
  }
}
