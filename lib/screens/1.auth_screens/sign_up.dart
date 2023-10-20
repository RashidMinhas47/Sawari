// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari/components/auth_text_field.dart';
import 'package:sawari/components/reusable_const_comps.dart';
import 'package:sawari/constants/image_urls.dart';
import 'package:sawari/screens/1.auth_screens/log_in.dart';
import 'package:sawari/screens/1.auth_screens/profile_complete.dart';

import '../../components/auth_button.dart';
import '../../components/icon_btn.dart';
import '../../components/leading_title_text.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LeadingTitleText(
                paddingDouble: size.width * 0.011,
                'Sign Up',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LeadingTitleText(
                      'Email or Phone Number ',
                    ),
                    AuthTextField(
                      prefixIconURL: phoneIcon,
                      size: size,
                      hintText: 'Enter your email or phone number',
                      controller: emailController,
                    ),
                    LeadingTitleText(
                      'Password ',
                    ),
                    AuthTextField(
                      prefixIconURL: lockIcon,
                      size: size,
                      hintText: 'Create your password',
                      controller: passwordController,
                    ),
                    LeadingTitleText(
                      'Confirm Password ',
                    ),
                    AuthTextField(
                      prefixIconURL: lockIcon,
                      size: size,
                      hintText: 'Create your password',
                      controller: TextEditingController(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: TextButton(
                            style:
                                TextButton.styleFrom(padding: EdgeInsets.zero),
                            onPressed: () {},
                            child: LeadingTitleText(
                              paddingDouble: 0,
                              'Forgotten Password?',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: const Color(0xFF8E8E8E),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              AuthButton(
                size: size,
                title: 'Sign Up',
                onPressed: () async {
//                   final _auth = FirebaseAuth.instance;
//
//                   try{
//                     await _auth.signInAnonymously();
//                     print("Your System is throwing this ERROR!");
// // await _auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);                    print("YOU GOT SUCCESSFUL SIGNUP");
// print("Your Entered email: ${emailController.text} and Your Entered Password is: ${passwordController.text}");
//
//                   }catch(e){
//                     print("YOU GOT THIS ERROR!: $e");
//                     print("Your Entered email: ${emailController.text} and Your Entered Password is: ${passwordController.text}");
//                   }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistrationCompScreen()));
                },
              ),
              ReusableConstComps.dividerOR(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconBtn(
                    'assets/svg/facebook.svg',
                    onPressed: () {},
                  ),
                  IconBtn('assets/svg/google.svg', onPressed: () {})
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LeadingTitleText(
                    paddingDouble: 0,
                    "Already have an account? ",
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: const Color(0xFF8E8E8E),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInScreen()));
                    },
                    child: LeadingTitleText(
                      paddingDouble: 0,
                      'Log In',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: const Color(0xFFEB4336),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const kPrefixIconURL = Padding(
  padding: EdgeInsets.only(bottom: 4.0),
  child: Icon(
    Icons.email,
    color: Colors.black,
  ),
);
