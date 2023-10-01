import 'package:flutter/material.dart';
import 'package:free_pdf_viewer/screens/utils/colors.dart';
import 'package:free_pdf_viewer/screens/widgets/text/custom_text.dart';

class StartingAuthPage extends StatelessWidget {
  const StartingAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: "Sign up",
                  textColor: AppColors.primaryColor,
                  outlineColor: AppColors.primaryColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final Color? outlineColor;

  const CustomButton(
      {super.key,
      this.backgroundColor,
      this.textColor,
      required this.text,
      this.outlineColor});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: outlineColor ?? Colors.transparent,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: backgroundColor ?? Colors.transparent,
        minimumSize: Size(
          MediaQuery.of(context).size.width * 0.9,
          60,
        ),
      ),
      onPressed: () {},
      child: CustomText(
        text: text,
        color: textColor,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
