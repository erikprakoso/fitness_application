import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:fitness_application/widgets/four_onboarding_frame.dart';
import 'package:fitness_application/widgets/four_onboarding_content.dart';

class FourOnboardingPage extends StatelessWidget {
  const FourOnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FourOnboardingFrame(),
          SizedBox(height: 64),
          FourOnboardingContent(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor:
            Colors.transparent, // Atur latar belakang menjadi transparan
        elevation: 0, // Hilangkan bayangan
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Bentuk sudut tombol
        ),
        child: Container(
          width: 100, // Lebar maksimum tombol
          height: 100, // Tinggi tombol
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 185, 201, 255),
                Color(0xFF95ADFE),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(30), // Bentuk sudut tombol
          ),
          child: Icon(IconlyLight.arrow_right_2,
              color: Colors.white), // Ikon dalam tombol
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
