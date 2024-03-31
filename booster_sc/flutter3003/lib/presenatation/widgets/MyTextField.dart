import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.labelText,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
  });

  final String labelText;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(color: Colors.white.withOpacity(0.7)),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          keyboardType: keyboardType,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),
          decoration: InputDecoration(
            suffixIcon: suffixIcon,

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
            ),

            //errorText: 'Error text',
          ),
        ),
      ],
    );
  }
}
