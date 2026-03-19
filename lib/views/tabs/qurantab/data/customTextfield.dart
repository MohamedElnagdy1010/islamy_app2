// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names
import 'package:flutter/material.dart';
import 'package:islamy_app2/shared/app_colors.dart';



class CutomTextfield extends StatelessWidget {
  const CutomTextfield({
    super.key,
    required this.hinttext,
    required this.prefixIcon,
  });
final  String hinttext;
final  Widget? prefixIcon;
  OutlineInputBorder get _border => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: AppColors.goldColor),
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: _border,

        enabledBorder: _border,

        focusedBorder: _border,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xffFEFFE8),
        ),
        hintText: hinttext,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
