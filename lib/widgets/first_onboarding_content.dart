import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstOnboardingContent extends StatelessWidget {
  const FirstOnboardingContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Track Your Goal',
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
                    text: "Don't worry if you have trouble determining \n",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF7B6F72),
                    )),
                TextSpan(
                    text: "your goals, We can help you determine your \n",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF7B6F72),
                    )),
                TextSpan(
                    text: "goals and track your goals",
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
