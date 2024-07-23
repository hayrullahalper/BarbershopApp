import 'package:barbershopapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barbershop App',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoCondensedTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}
