import 'package:flutter/material.dart';
import 'package:fitness_application/widgets/logo_onboarding.dart';
import 'package:fitness_application/widgets/button_onboarding.dart';

class WelcomeOnboardingPage extends StatelessWidget {
  const WelcomeOnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoOnboarding(),
            SizedBox(height: 20), // Jarak antara gambar dan tombol
            ButtonOnboarding(),
          ],
        ),
      ),
    );
  }
}