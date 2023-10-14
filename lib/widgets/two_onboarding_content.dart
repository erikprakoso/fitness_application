import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoOnboardingContent extends StatelessWidget {
  const TwoOnboardingContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get Burn',
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
                    text: "Let’s keep burning, to achive yours goals, it \n",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF7B6F72),
                    )),
                TextSpan(
                    text: "hurts only temporarily, if you give up now \n",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF7B6F72),
                    )),
                TextSpan(
                    text: "you will be in pain forever",
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
