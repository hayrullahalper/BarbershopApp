import 'package:flutter/material.dart';

class VerifyScreen extends StatefulWidget {
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
          icon: Icon(Icons.arrow_back, color: Colors.black),
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
              Icon(
                Icons.phone_android,
                size: 100,
                color: Colors.black,
              ),
              SizedBox(height: 20),
              Text(
                'Verify Your Mobile Number',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildOtpBox(_otpController1, _otpFocusNode1, _otpFocusNode2),
                  _buildOtpBox(_otpController2, _otpFocusNode2, _otpFocusNode3),
                  _buildOtpBox(_otpController3, _otpFocusNode3, _otpFocusNode4),
                  _buildOtpBox(_otpController4, _otpFocusNode4, null),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle OTP verification
                },
                child: Text('Verify'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOtpBox(TextEditingController controller, FocusNode currentFocus,
      FocusNode? nextFocus) {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: controller,
        focusNode: currentFocus,
        decoration: InputDecoration(
          counterText: "", // Remove the 0/1 counter
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 24,
        ),
        maxLength: 1,
        onChanged: (value) {
          if (value.length == 1 && nextFocus != null) {
            FocusScope.of(context).requestFocus(nextFocus);
          }
        },
      ),
    );
  }
}
