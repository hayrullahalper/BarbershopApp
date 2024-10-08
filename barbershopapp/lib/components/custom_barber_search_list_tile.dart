import 'package:flutter/material.dart';

class CustomBarberSearchListTile extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final double fontSize;
  final EdgeInsetsGeometry padding;

  const CustomBarberSearchListTile({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.white,
    this.textColor = Colors.black,
    this.borderRadius = 8.0,
    this.fontSize = 16.0,
    this.padding = const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.75), // Black border
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Material(
          color: color,
          elevation: 0,
          borderRadius: BorderRadius.circular(10),
          child: MaterialButton(
            onPressed: () {
              onPressed();
            },
            minWidth: 200.0,
            height: 50.0,
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "Poppins",
                color: textColor,
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
