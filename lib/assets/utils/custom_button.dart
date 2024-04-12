import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String btnText;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.btnText,
    required this.color,
    required this.fontWeight,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(
              color: color,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
