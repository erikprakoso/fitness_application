import 'package:flutter/material.dart';

class FourOnboardingFrame extends StatelessWidget {
  const FourOnboardingFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/four_onboarding_frame.png',
            fit: BoxFit.contain,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
