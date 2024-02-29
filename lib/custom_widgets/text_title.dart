import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTitle extends StatelessWidget {
  const TextTitle(
    this.text, {
    super.key,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.textAlign,
  });

  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: color ?? const Color.fromARGB(255, 201, 153, 251),
        fontSize: fontSize ?? 24,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
      textAlign: textAlign,
    );
  }
}
