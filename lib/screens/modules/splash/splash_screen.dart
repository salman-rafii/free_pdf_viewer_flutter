import 'dart:async';

import 'package:flutter/material.dart';
import 'package:free_pdf_viewer/screens/modules/auth/starting_page.dart';
import 'package:free_pdf_viewer/screens/modules/home/main_screen.dart';
import 'package:free_pdf_viewer/screens/utils/colors.dart';
import 'package:free_pdf_viewer/screens/widgets/text/custom_text.dart';

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
            MaterialPageRoute(builder: (context) => const StartingAuthPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
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
