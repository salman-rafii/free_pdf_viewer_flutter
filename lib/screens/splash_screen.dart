import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pdf_viewer/screens/main_screen.dart';
import 'package:pdf_viewer/utils/colors.dart';
import 'package:pdf_viewer/widgets/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [
                Text(""),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomText(
                  text: "FREE PDF VIEWER",
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 20,
                ),
                CircularProgressIndicator(
                    // backgroundColor: primaryColor,
                    )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: const CustomText(
                text: "Powered By MangiSols",
              ),
            )
          ],
        ),
      ),
    );
  }
}
