import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThreeOnboardingContent extends StatelessWidget {
  const ThreeOnboardingContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Eat Well',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          RichText(
            text: TextSpan(
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                    text: "Let's start a healthy lifestyle with us, we can \n",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF7B6F72),
                    )),
                TextSpan(
                    text: "determine your diet every day. healthy \n",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF7B6F72),
                    )),
                TextSpan(
                    text: "eating is fun",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF7B6F72),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
