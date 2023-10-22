import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:fitness_application/pages/three_register_page.dart';

class TwoRegisterPage extends StatefulWidget {
  TwoRegisterPage({Key? key}) : super(key: key);

  @override
  _TwoRegisterPageState createState() => _TwoRegisterPageState();
}

class _TwoRegisterPageState extends State<TwoRegisterPage> {
  
  final List<String> genderOptions = ['Male', 'Female', 'Other'];

  TextEditingController dateController = TextEditingController();
  DateTime selectedDate = DateTime.now(); 

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
        dateController.text = "${selectedDate.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/register_one.png',
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Let’s complete your profile',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'It will help us to know more about you!',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Choose Gender',
                      prefixIcon: Icon(IconlyLight.profile),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    icon: Icon(IconlyLight.arrow_down_2),
                    items: genderOptions.map((String gender) {
                      return DropdownMenuItem<String>(
                        value: gender,
                        child: Text(gender),
                      );
                    }).toList(),
                    onChanged: (String? selectedGender) {
                      
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Date of Birth',
                      prefixIcon: Icon(IconlyLight.calendar),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    controller: dateController,
                    readOnly: true,
                    onTap: () => _selectDate(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Your Weight',
                            prefixIcon:
                                Image.asset('assets/images/weight-scale 1.png'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFFC58BF2), Color(0xFFC58BF2)],
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17.0),
                              ),
                            ),
                          ),
                          child: Text(
                            'KG',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Your Height',
                            prefixIcon: Icon(IconlyLight.swap),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFFC58BF2), Color(0xFFC58BF2)],
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17.0),
                              ),
                            ),
                          ),
                          child: Text(
                            'CM',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
                              builder: (context) => ThreeRegisterPage()));
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
                                'Next',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                IconlyLight.arrow_right_2,
                                color: Colors.white, 
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
        ],
      ),
    );
  }
}
