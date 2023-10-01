// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatefulWidget {
  final text,
      fontSize,
      fontWeight,
      color,
      overflow,
      textAlign,
      maxLines,
      letterSpacing,
      decoration,
      shadows,
      decorationColor,
      softWrap;
  const CustomText(
      {this.text,
      this.letterSpacing,
      this.fontSize,
      this.color,
      this.fontWeight,
      this.overflow,
      this.decoration,
      this.textAlign,
      this.maxLines,
      this.shadows,
      this.decorationColor,
      this.softWrap,
      key})
      : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return
        // text: widget.text,
        Text(
      widget.text,
      style: GoogleFonts.poppins(
        letterSpacing: widget.letterSpacing,
        fontSize: widget.fontSize,
        fontWeight: widget.fontWeight ?? FontWeight.normal,
        color: widget.color ?? Colors.white,
        decoration: widget.decoration,
        shadows: widget.shadows,
        decorationColor: widget.decorationColor,
      ),
      softWrap: widget.softWrap,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      textAlign: widget.textAlign,
    );
  }
}
