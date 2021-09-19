import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.notifications)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.extension)),
                  ],
                ),
                SizedBox(height: 50.0),
                Text(
                  'Welcome,',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.bold)),
                ),
                Text(
                  'Charlie',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w300)),
                ),
                SizedBox(height: 30.0),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: OutlineInputBorder()),
                ),
                SizedBox(height: 80.0),
                Text(
                  'Saved Places',
                  style:
                      GoogleFonts.poppins(textStyle: TextStyle(fontSize: 24.0)),
                ),
                SizedBox(
                  height: 300.0,
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1.49,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    children: [
                      Image(image: AssetImage('assets/images/barcelona.png')),
                      Image(image: AssetImage('assets/images/greece.png')),
                      Image(image: AssetImage('assets/images/japan.png')),
                      Image(image: AssetImage('assets/images/rome.png'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
