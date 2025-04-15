import 'package:bankapp/colors/colors.dart';
import 'package:bankapp/screens/onboarding.dart';
import 'package:flutter/material.dart';

class Logopage extends StatelessWidget {
  Logopage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OnboardingScreen()),
        );
      },
      child: Scaffold(
        backgroundColor: ColorConstants.background,
        body: Center(
          child: Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/Logo.png'),
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
