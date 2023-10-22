import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitness_application/pages/login_page.dart';

class SuccessRegisterPage extends StatelessWidget {
  const SuccessRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 102,),
              Container(
                child: Image.asset('assets/images/success_registration.png'),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Welcome, Stefani',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'You are all set now, let’s reach your',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                'goals together with us',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 160,
              ),
              GestureDetector(
                onTap: () {},
                child: Ink(
                  width: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 185, 201, 255),
                        Color(0xFF95ADFE)
                      ],
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Go To Home',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
