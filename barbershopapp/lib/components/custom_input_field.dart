import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatefulWidget {
  final String labelText;
  final bool isPhoneNumber;
  final bool isPassword;
  final Function(String)? onChanged;
  final TextEditingController? phoneController;

  const CustomInputField({
    super.key,
    required this.labelText,
    this.isPhoneNumber = false,
    this.isPassword = false,
    this.onChanged,
    this.phoneController,
  });

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    var countryCodeController = TextEditingController(text: "+90");

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(11.0),
        ),
        child: widget.isPhoneNumber
            ? Row(
                children: [
                  Container(
                    width: 65,
                    child: TextField(
                      controller: countryCodeController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        hintText: "+90",
                        hintStyle:
                            TextStyle(fontFamily: "Poppins", fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: widget.onChanged,
                      controller: widget.phoneController,
                      keyboardType: TextInputType.phone,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        hintText: widget.labelText,
                        hintStyle: const TextStyle(
                            fontFamily: "Poppins", fontSize: 16),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : TextField(
                onChanged: widget.onChanged,
                obscureText: widget.isPassword ? _obscureText : false,
                decoration: InputDecoration(
                  hintText: widget.labelText,
                  hintStyle:
                      const TextStyle(fontFamily: "Poppins", fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: widget.isPassword
                      ? IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        )
                      : null,
                ),
              ),
      ),
    );
  }
}
