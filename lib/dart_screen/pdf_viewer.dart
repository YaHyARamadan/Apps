import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class PdfViewer extends StatefulWidget {
  final String pdfPath;
  const PdfViewer({super.key, required this.pdfPath});

  @override
  State<PdfViewer> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
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
      body: SfPdfViewer.asset(widget.pdfPath) ,
    ) ;
  }
}

