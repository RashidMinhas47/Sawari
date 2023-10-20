import 'package:flutter/material.dart';

import 'leading_title_text.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key? key,
    required this.size, required this.onPressed, required this.title,
  }) : super(key: key);

  final Size size;
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed,style: TextButton.styleFrom(
        fixedSize: Size(size.width*0.9, 60),backgroundColor: const Color(0xFFEB4336),shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    )

    ), child: LeadingTitleText(
       title,color: Colors.white,
      fontSize: 22,
    ),);
  }
}