import 'package:barbershopapp/components/custom_button.dart';
import 'package:barbershopapp/components/custom_input_field.dart';
import 'package:barbershopapp/components/custom_text_button.dart';
import 'package:flutter/material.dart';

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
                          child: Image.asset('assets/images/logo.png',
                              height: 175)),
                      SizedBox(height: 20),
                      CustomInputField(
                        labelText: "Phone Number",
                        isPhoneNumber: true,
                      ),
                      SizedBox(height: 20),
                      CustomInputField(
                        labelText: "Password",
                        isPassword: true,
                      ),
                      SizedBox(height: 10),
                      CustomTextButton(text: "Forgot Password?"),
                      SizedBox(height: 20),
                      CustomButton(
                          text: "Login", fontSize: 20, onPressed: () {}),
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
