import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FourOnboardingContent extends StatelessWidget {
  const FourOnboardingContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Improve Sleep \nQuality',
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
                    text: "Improve the quality of your sleep with us, \n",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF7B6F72),
                    )),
                TextSpan(
                    text: "good quality sleep can bring a good mood \n",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF7B6F72),
                    )),
                TextSpan(
                    text: "in the morning",
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
