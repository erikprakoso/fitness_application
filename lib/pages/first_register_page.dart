import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fitness_application/widgets/first_register_content.dart';
import 'package:fitness_application/widgets/first_register_form.dart';
import 'package:fitness_application/widgets/button_register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitness_application/pages/login_page.dart';

class FirstRegisterPage extends StatelessWidget {
  const FirstRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          FirstRegisterContent(),
          SizedBox(
            height: 20,
          ),
          FirstRegisterForm(),
          SizedBox(
            height: 100,
          ),
          ButtonRegister(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 130,
                height: 1,
                color: Color(0xFFDDDDDD),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Or"),
              ),
              Container(
                width: 130,
                height: 1,
                color: Color(0xFFDDDDDD),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all(0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Color(0xFFDDDDDD)),
                        ),
                      ),
                    ),
                    child: Container(
                      width: 30,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/google_logo.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all(0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Color(0xFFDDDDDD)),
                        ),
                      ),
                    ),
                    child: Container(
                      width: 30,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/facebook_logo.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20), 
          Text.rich(
            TextSpan(
              text: "Already have an account? ",
              style: GoogleFonts.poppins(
                color: Colors.grey, 
              ),
              children: [
                TextSpan(
                  text: "Login",
                  style: GoogleFonts.poppins(
                    color: Color(0xFFC58BF2),
                    decoration: TextDecoration
                        .none, 
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
                    },
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
