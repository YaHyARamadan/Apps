import 'package:flutter/material.dart';
import 'package:flutter_education_app/dart_screen/pdf_viewer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class RectangularButton extends StatefulWidget {
  final String text;
  final String pdfPath;
  final double? positTop;
  final double? positRight;
  final double? positLeft;
  final double? positBottom;


  const RectangularButton(
      {Key? key,
        required this.text,
        required this.pdfPath,
        this.positBottom,
        this.positLeft,
        this.positRight,
        this.positTop
      })
      : super(key: key);

  @override
  _RectangularButtonState createState() => _RectangularButtonState();
}

class _RectangularButtonState extends State<RectangularButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        // Navigate to the PdfViewer screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PdfViewer(
              pdfPath: widget.pdfPath,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 170,
        decoration: BoxDecoration(
            color: const Color(0xFF042B59), borderRadius: BorderRadius.circular(20)),
        child: Stack(children: [
          Positioned(
              top: 9,
              left: 9,
              child: Image.asset(
                "lib/assets/img/firstScreenImage/download-removebg-preview (1).png",
                scale: 4,
              )),
          Positioned(
              top: widget.positTop,
              left: widget.positLeft,
              right: widget.positRight,
              bottom: widget.positBottom,
              child: Text(
                widget.text,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white),
              ))
        ]),
      ),
    );
  }
}
