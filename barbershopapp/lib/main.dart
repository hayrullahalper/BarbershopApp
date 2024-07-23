import 'package:barbershopapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BarbershopApp());
}

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barbershop',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          fontFamily: 'Poppins',
          appBarTheme: AppBarTheme.of(context).copyWith(
            elevation: 0,
            scrolledUnderElevation: 0,
            shadowColor: Colors.white,
            backgroundColor: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.white),
      home: WelcomeScreen(),
    );
  }
}
