import 'package:fashions_app/screens/screen_colors.dart';
import 'package:flutter/material.dart';

class CustomColorSelector extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const CustomColorSelector({
    super.key,
    required this.color,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: BoxBorder.all(
          color: color == Colors.white ? kBlackColor : color
        ),
      ),
      child: isSelected ? Icon(
        Icons.check,
        size: 10,
        color: (color == Colors.white) ? kBlackColor : kWhiteColor,
      ) : null,
    );
  }
}
