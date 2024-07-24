import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final alignment;
  final VoidCallback onPressed;
  final text;
  final color;

  const CustomTextButton(
      {super.key,
      this.text,
      this.color = Colors.black,
      this.alignment = Alignment.centerRight,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
