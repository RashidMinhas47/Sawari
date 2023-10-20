import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
   bool obscureText = false;
  final Size size;
   final String prefixIconURL;
  AuthTextField({Key? key,required this.size, required this.hintText, required this.controller, this.obscureText = false, required this.prefixIconURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: size.width*0.05,right:size.width*0.05,bottom: 10.0),
      child: TextFormField(

        controller: controller,style: GoogleFonts.inter(
      color: const Color(0xFF000000),
      fontSize: 20,
    ),
        obscureText: obscureText,

        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(bottom: 12,top: 8),
            child: SvgPicture.asset(prefixIconURL,height: 4.0,width: 4.0,),
          ),
            hintText: hintText,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none
            ),
            fillColor: const Color.fromARGB(245, 235, 235, 235),

            hintStyle: GoogleFonts.inter(
                color: const Color(0xFF8E8E8E),
              fontSize: 20,
            ),


        ),



      ),
    );
  }
}