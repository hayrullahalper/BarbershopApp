import 'package:barbershopapp/components/custom_button.dart';
import 'package:barbershopapp/screens/register_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              height: 300.0,
            ),
            const SizedBox(height: 20.0),
            CustomButton(
              text: "Login",
              onPressed: () {},
              color: Colors.black45,
            ),
            CustomButton(
              text: "Register",
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              color: Colors.black45,
            )
          ],
        ),
      ),
    );
  }
}
