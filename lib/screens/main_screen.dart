import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pdf_viewer/screens/view_pdf.dart';
import 'package:pdf_viewer/utils/colors.dart';
import 'package:pdf_viewer/widgets/custom_text.dart';

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
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: CustomText(
          text: "Free PDF Viewer",
          color: whiteColor,
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 3,
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
                    70,
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

                  setState(() {});
                },
                label: CustomText(
                  text: "Choose PDF",
                  color: whiteColor,
                  fontSize: 20.0,
                )),
          ),
        ),
      ),
    );
  }
}
