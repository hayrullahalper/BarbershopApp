import 'package:barbershopapp/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_input_field.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    textAlign: TextAlign.left,
                    'Set New Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomInputField(
                    labelText: "Password",
                    isPassword: true,
                  ),
                  SizedBox(height: 10),
                  CustomInputField(
                    labelText: "Confirm Password",
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: "Update Password",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    padding: EdgeInsets.zero,
                    fontSize: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
