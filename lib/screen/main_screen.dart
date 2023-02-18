import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pdf_viewer/screen/view_pdf.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<File> files = [];
  FilePickerResult? result;
  PlatformFile? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Free PDF Viewer"),
        centerTitle: true,
        backgroundColor: const Color(0xff24b04b),
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton.icon(
                icon: const Icon(
                  Icons.file_open_sharp,
                  size: 40,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff24b04b),
                  minimumSize: const Size(
                    double.infinity,
                    80,
                  ),
                ),
                onPressed: () async {
                  result = await FilePicker.platform.pickFiles();
                  file = result!.files.first;
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PdfApp(
                          path: file!.path!,
                        );
                      },
                    ),
                  );
                  print(result);
                  setState(() {});
                },
                label: const Text(
                  "Choose PDF",
                  style: TextStyle(fontSize: 20.0),
                )),
          ),
        ),
      ),
    );
  }
}
