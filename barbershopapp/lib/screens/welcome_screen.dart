import 'package:barbershopapp/components/custom_button.dart';
import 'package:barbershopapp/screens/register_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
                tag: "barberlogo",
                child: Image.asset('assets/images/logo.png', height: 225)),
            SizedBox(height: 20),
            CustomButton(
              text: "Login",
              fontSize: 24,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
            SizedBox(height: 10),
            CustomButton(
              text: "Register",
              fontSize: 24,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
