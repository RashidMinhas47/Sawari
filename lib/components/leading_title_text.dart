import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeadingTitleText extends StatelessWidget {
   LeadingTitleText(this.title,{Key? key,this.color = Colors.black,this.paddingDouble = 1, this.fontSize =24,this.fontWeight= FontWeight.w600})
      : super(key: key);

  double paddingDouble;
  final String title;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: paddingDouble*24, vertical: paddingDouble *7),
      child: Text(
        title,
        style: GoogleFonts.inter(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}