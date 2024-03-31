import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.title,
    this.onPressed,
    required this.fontSize,
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.textColor,
  });

  final String title;
  final Function()? onPressed;
  final double fontSize;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: Colors.white.withOpacity(0.7),
          ),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: onPressed,
        child: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: fontSize,
              color: textColor,
            )),
      ),
    );
  }
}
