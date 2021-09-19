import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui2/Screens/main_screen.dart';
import 'package:login_ui2/Screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
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
                  SizedBox(height: 100.0),
                  Text(
                    'Hello There.',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 36.0, fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    'Sign In and continue to App.',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontWeight: FontWeight.w300)),
                  ),
                  SizedBox(height: 44.0),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16.0)),
                            textAlign: TextAlign.end,
                          )),
                    ],
                  ),
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
                                    fontWeight: FontWeight.w200,
                                    fontSize: 18.0)),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            RegisterScreen()));
                              },
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
      ),
    );
  }
}
