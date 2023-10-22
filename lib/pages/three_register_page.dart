import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitness_application/pages/four_register_page.dart';

class ThreeRegisterPage extends StatelessWidget {
  const ThreeRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                'What is your goal ?',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'It will help us to choose a best',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                'program for you',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('assets/images/Card-Goals-1.png'),
                  ),
                  Container(
                    width: 289,
                    child: Image.asset('assets/images/Card-Goals-2.png'),
                  ),
                  Container(
                    child: Image.asset('assets/images/Card-Goals-3.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 110,
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FourRegisterPage()));
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
                            'Confirm',
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
