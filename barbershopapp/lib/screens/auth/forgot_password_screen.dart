import 'package:barbershopapp/screens/auth/reset_password_verify_screen.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../components/custom_input_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Image.asset(
                  "assets/images/lock.png",
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Your Mobile Number',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 15),
              CustomInputField(
                labelText: "Phone Number",
                isPhoneNumber: true,
              ),
              const SizedBox(height: 15),
              Flexible(
                child: CustomButton(
                  text: "Reset Password",
                  fontSize: 18,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPasswordVerifyScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
