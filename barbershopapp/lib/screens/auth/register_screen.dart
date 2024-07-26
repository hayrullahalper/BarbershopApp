import 'package:barbershopapp/components/custom_button.dart';
import 'package:barbershopapp/components/custom_input_field.dart';
import 'package:barbershopapp/components/custom_text_button.dart';
import 'package:barbershopapp/screens/auth/login_screen.dart';
import 'package:barbershopapp/screens/auth/verify_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
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
                    'REGISTER',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomInputField(labelText: "First Name"),
                  SizedBox(height: 10),
                  CustomInputField(labelText: "Last Name"),
                  SizedBox(height: 10),
                  CustomInputField(
                    labelText: "Phone Number",
                    isPhoneNumber: true,
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
                  SizedBox(height: 10),
                  CustomTextButton(
                    text: "Already Have an Account?",
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                  ),
                  SizedBox(height: 10),
                  CustomButton(
                    text: "Register",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyScreen()));
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
