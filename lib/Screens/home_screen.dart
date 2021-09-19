import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui2/Screens/login_screen.dart';
import 'package:login_ui2/Screens/register_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/welcome_screen.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70.0),
                Text(
                  'Welcome',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 44.0,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  'Greetings!! Android Developer.',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 18.0)),
                ),
                SizedBox(height: 80.0),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen()));
                  },
                  borderRadius: BorderRadius.circular(30.0),
                  child: Ink(
                    width: 170.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color.fromRGBO(242, 59, 95, 100)),
                    child: Center(
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                RegisterScreen()));
                  },
                  borderRadius: BorderRadius.circular(30.0),
                  child: Ink(
                    width: 170.0,
                    height: 55.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color.fromRGBO(242, 59, 95, 100)),
                    child: Center(
                      child: Text(
                        'Register',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: [
                        Text(
                          'You are not a member?',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 18.0)),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color.fromRGBO(242, 59, 95, 100),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                            ))
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
