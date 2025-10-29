import 'package:flutter/material.dart';

class CommonTextfield extends StatelessWidget {
  const CommonTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.oboureText = false,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.autovalidateMode});
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final IconData? suffixIcon;
  final autovalidateMode;
  final IconData? prefixIcon;
  final bool oboureText;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      autovalidateMode: autovalidateMode,
      obscureText: oboureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
      ),
    );
  }
}
