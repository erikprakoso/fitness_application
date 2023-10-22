import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstRegisterContent extends StatelessWidget {
  const FirstRegisterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hey There,',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text(
            'Create an Account',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
