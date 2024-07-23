import 'package:barbershopapp/components/custom_button.dart';
import 'package:barbershopapp/components/custom_otp_box.dart';
import 'package:flutter/material.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController _otpController1 = TextEditingController();
  final TextEditingController _otpController2 = TextEditingController();
  final TextEditingController _otpController3 = TextEditingController();
  final TextEditingController _otpController4 = TextEditingController();

  final FocusNode _otpFocusNode1 = FocusNode();
  final FocusNode _otpFocusNode2 = FocusNode();
  final FocusNode _otpFocusNode3 = FocusNode();
  final FocusNode _otpFocusNode4 = FocusNode();

  @override
  void dispose() {
    _otpController1.dispose();
    _otpController2.dispose();
    _otpController3.dispose();
    _otpController4.dispose();
    _otpFocusNode1.dispose();
    _otpFocusNode2.dispose();
    _otpFocusNode3.dispose();
    _otpFocusNode4.dispose();
    super.dispose();
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Image.asset(
                  "assets/images/phono.avif",
                  height: 125,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Verify Your Mobile Number',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CustomOTPBox(
                          _otpController1, _otpFocusNode1, _otpFocusNode2),
                      CustomOTPBox(
                          _otpController2, _otpFocusNode2, _otpFocusNode3),
                      CustomOTPBox(
                          _otpController3, _otpFocusNode3, _otpFocusNode4),
                      CustomOTPBox(_otpController4, _otpFocusNode4, null),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: CustomButton(
                  text: "Verify",
                  fontSize: 18,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
