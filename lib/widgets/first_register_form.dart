import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstRegisterForm extends StatefulWidget {
  @override
  _FirstRegisterFormState createState() => _FirstRegisterFormState();
}

class _FirstRegisterFormState extends State<FirstRegisterForm> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool _obscureText = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextField(
                controller: firstName,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  hintText: 'Enter your first name',
                  prefixIcon: Icon(IconlyLight.profile),
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
                controller: lastName,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  hintText: 'Enter your last name',
                  prefixIcon: Icon(IconlyLight.profile),
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
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isChecked = !_isChecked;
                    });
                  },
                  child: Container(
                    width: 24.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                      color: _isChecked ? Colors.blue : Colors.white,
                    ),
                    child: _isChecked
                        ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 16.0,
                          )
                        : null,
                  ),
                ),
                SizedBox(
                  width: 8.0, // Space between the checkbox and text
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      'By continuing you accept our Privacy Policy and Term of Use.',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
