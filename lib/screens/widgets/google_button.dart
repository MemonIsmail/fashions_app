import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final String text;
  final String? highlightedText;
  final Color buttonColor;
  final Color borderColor;
  final double borderWidth;
  final Color textColor;
  final IconData? icon;
  final Color? iconColor;
  final VoidCallback onPressed;
  const GoogleButton({
    super.key,
    required this.text,
    this.highlightedText = '',
    required this.buttonColor,
    required this.borderColor,
    this.borderWidth = 0.5,
    required this.textColor,
    required this.onPressed,
    this.icon,
    this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: buttonColor,
          side: BorderSide(
            width: borderWidth,
            color: borderColor,
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/google logo.png',
              height: 15,
              width: 15,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 17,
                  color: textColor,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              highlightedText!,
              style: TextStyle(
                  fontSize: 17,
                  color: textColor,
                  fontWeight: FontWeight.w800
              ),
            ),
          ],
        )
    );
  }
}
