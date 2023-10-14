import 'package:flutter/material.dart';

class LogoOnboarding extends StatelessWidget {
  const LogoOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/images/10286.png'),
      ),
    );
  }
}
