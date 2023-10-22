import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // Import untuk GestureDetector
import 'package:fitness_application/pages/first_register_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  bool _isChecked = false;

  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Center(
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
                  'Welcome Back',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        prefixIcon: Icon(IconlyLight.message),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: TextField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        prefixIcon: Icon(IconlyLight.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText ? IconlyLight.show : IconlyLight.hide,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Forgot your password?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            FirstRegisterPage(),
                                      ));
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 250,
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
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
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
              text: "Don’t have an account yet? ",
              style: GoogleFonts.poppins(
                color: Colors.grey,
              ),
              children: [
                TextSpan(
                  text: "Register",
                  style: GoogleFonts.poppins(
                    color: Color(0xFFC58BF2),
                    decoration: TextDecoration.none,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FirstRegisterPage(),
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
