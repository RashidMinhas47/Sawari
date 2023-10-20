import 'package:flutter/material.dart';
import 'package:sawari/components/auth_button.dart';
import 'package:sawari/components/leading_title_text.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:sawari/screens/profile_screen.dart';

class RegistrationCompScreen extends StatelessWidget {
  const RegistrationCompScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    // child: SvgPicture.asset('assets/svg/successful_check.svg'),
                  ),
                  LeadingTitleText('Successfully Registered'),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AuthButton(
                        size: size,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()));
                        },
                        title: 'Thank You'),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
