import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String labelText;

  const CustomInputField({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.0), // Black border
          borderRadius: BorderRadius.circular(11.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: labelText,
            hintStyle: TextStyle(fontFamily: "Poppins", fontSize: 16),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
