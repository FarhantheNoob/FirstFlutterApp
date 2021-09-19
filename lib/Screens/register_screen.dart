import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui2/Screens/login_screen.dart';

import 'main_screen.dart';

class RegisterScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login_screen.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50.0),
                  Text(
                    'Hello There',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 36.0)),
                  ),
                  Text(
                    'Sign Up to continue to App.',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 16.0)),
                  ),
                  SizedBox(height: 44.0),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(CupertinoIcons.person_alt),
                        labelText: 'Full Name',
                        labelStyle: GoogleFonts.poppins()),
                    style: GoogleFonts.poppins(),
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field Cannot be Empty.';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(CupertinoIcons.mail_solid),
                        labelText: 'Email Address',
                        labelStyle: GoogleFonts.poppins()),
                    style: GoogleFonts.poppins(),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field Cannot be Empty.';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(CupertinoIcons.lock_fill),
                        labelText: 'Password',
                        labelStyle: GoogleFonts.poppins()),
                    style: GoogleFonts.poppins(),
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field Cannot be Empty.';
                      }
                    },
                  ),
                  SizedBox(height: 16.0),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MainScreen()));
                      }
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
                    child: Row(
                      children: [
                        Text(
                          'Already a member?',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 18.0)),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginScreen()));
                            },
                            child: Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Color.fromRGBO(242, 59, 95, 100),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                            ))
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
