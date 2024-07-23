import 'package:barbershopapp/components/custom_button.dart';
import 'package:barbershopapp/components/custom_input_field.dart';
import 'package:barbershopapp/screens/verify_screen.dart';
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
                  const Text(
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
                  const SizedBox(height: 10),
                  CustomInputField(labelText: "Phone Number"),
                  const SizedBox(height: 10),
                  CustomInputField(labelText: "Password"),
                  const SizedBox(height: 10),
                  CustomInputField(labelText: "Confirm Password"),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Already Have an Account?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 10),
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
