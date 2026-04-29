import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screen_colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData? suffixIcon;
  final bool showIcon;
  final bool obscureText;
  final Function()? onTap;
  final Function(String)? onChanged;

  const CustomTextField({
    super.key,
    required this.label,
    this.suffixIcon,
    this.showIcon = true,
    this.obscureText = false,
    this.onChanged,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: kBlackColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: Get.height * 0.01,),
        TextField(
          obscureText: obscureText,
          onChanged: onChanged,
          cursorHeight: 15,
          decoration: InputDecoration(
            isDense: true,
            constraints: BoxConstraints(
              maxHeight: 25,
            ),

            suffixIcon: showIcon ?
            GestureDetector(
              onTap: onTap,
              child: Icon(
                suffixIcon,
                size: 18,
                color: kBlackColor,
              ),
            ): null,
            suffixIconConstraints: BoxConstraints(
              minWidth: 0,
            ),

            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffEEEEEE),
                width: 1,
              ),
            ),

            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kBlackColor,
                width: 1,
              ),
            ),

            contentPadding: EdgeInsets.symmetric(vertical: 14),
          ),

          style: TextStyle(
              color: Colors.grey[900]
          ),

          cursorColor: kBlackColor,
        ),
      ],
    );
  }
}
