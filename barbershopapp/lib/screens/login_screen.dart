import 'package:barbershopapp/components/custom_button.dart';
import 'package:barbershopapp/components/custom_input_field.dart';
import 'package:barbershopapp/components/custom_text_button.dart';
import 'package:barbershopapp/screens/forgot_password_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
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
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Hero(
                        tag: "barberlogo",
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 175,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomInputField(
                        labelText: "Phone Number",
                        isPhoneNumber: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomInputField(
                        labelText: "Password",
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextButton(
                        text: "Forgot Password?",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPasswordScreen()));
                        },
                      ),
                      SizedBox(height: 20),
                      CustomButton(
                        text: "Login",
                        fontSize: 20,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
