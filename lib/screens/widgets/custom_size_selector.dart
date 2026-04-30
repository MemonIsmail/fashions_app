import 'package:fashions_app/screens/screen_colors.dart';
import 'package:flutter/material.dart';

class CustomSizeSelector extends StatelessWidget {
  final String size;
  final bool isSelected;
  const CustomSizeSelector({
    super.key,
    required this.size,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? kBlackColor : kWhiteColor,
        border: BoxBorder.all(
          color: isSelected ? kBlackColor : Colors.grey,
          width: isSelected ? 0 : 1.1,
        ),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color: isSelected ? kWhiteColor : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
