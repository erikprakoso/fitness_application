import 'package:flutter/material.dart';
import 'package:fitness_application/pages/first_onboarding_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonOnboarding extends StatelessWidget {
  const ButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Tindakan yang diambil ketika tombol ditekan
      },
      child: Ink(
        width: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 185, 201, 255), Color(0xFF95ADFE)],
            stops: [0, 0.3], // Menentukan posisi perubahan warna
          ),
          borderRadius: BorderRadius.circular(35), // Bentuk sudut tombol
          boxShadow: [
            BoxShadow(
              color: Color(0xFF95ADFE), // Warna bayangan
              blurRadius: 10, // Jumlah blur
              offset: Offset(0, 5), // Posisi bayangan (x, y)
            ),
          ],
        ),
        child: InkResponse(
          onTap: () {
            // Tindakan yang diambil ketika tombol ditekan
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => FirstOnboardingPage()));
          },
          borderRadius: BorderRadius.circular(35),
          highlightShape: BoxShape.rectangle,
          splashColor: Color(0xFF95ADFE).withOpacity(0.5),
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxWidth: 300, // Lebar maksimum tombol
            ),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Get Started',
              style: GoogleFonts.poppins(
                fontSize: 16, // Ukuran teks tombol
                color: Colors.white, // Warna teks
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
