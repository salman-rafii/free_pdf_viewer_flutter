import 'package:flutter/material.dart';
import 'package:pdf_viewer/utils/colors.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';

class PdfApp extends StatelessWidget {
  final String path;
  const PdfApp({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          "PDF",
        ),
      ),
      body: PdfView(gestureNavigationEnabled: true, path: path),
    );
  }
}
