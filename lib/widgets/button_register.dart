import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitness_application/pages/two_register_page.dart';

class ButtonRegister extends StatelessWidget {
  const ButtonRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Ink(
        width: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 185, 201, 255), Color(0xFF95ADFE)],
            stops: [0, 0.3], 
          ),
          borderRadius: BorderRadius.circular(35), 
          boxShadow: [
            BoxShadow(
              color: Color(0xFF95ADFE), 
              blurRadius: 10, 
              offset: Offset(0, 5), 
            ),
          ],
        ),
        child: InkResponse(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TwoRegisterPage()));
          },
          borderRadius: BorderRadius.circular(35),
          highlightShape: BoxShape.rectangle,
          splashColor: Color(0xFF95ADFE).withOpacity(0.5),
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxWidth: 300, 
            ),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Register',
              style: GoogleFonts.poppins(
                fontSize: 16, 
                color: Colors.white, 
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
