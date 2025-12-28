import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.iconButton,
    this.textInputType,
    this.validtion,
    this.onsaved,
    this.obscureText = false,
  });
  final String hint;
  final IconButton? iconButton;
  final TextInputType? textInputType;
  final String? Function(String?)? validtion;
  final void Function(String?)? onsaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onSaved: onsaved,
      validator: validtion,
      keyboardType: textInputType,
      cursorColor: ColorsApp.kbuttomColorblue,
      cursorHeight: 15,
      cursorWidth: 1.5,
      style: TextStyle(color: ColorsApp.kGray, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        hintStyle: TextStyle(color: ColorsApp.kGray),
        hintText: hint,
        suffixIcon: iconButton,
        fillColor: ColorsApp.kTextfieldColor,
        filled: true,
        border: borderTextformfield(ColorsApp.kGray),
        enabledBorder: borderTextformfield(ColorsApp.kTextfieldColor),
        focusedBorder: borderTextformfield(ColorsApp.kbuttomColorblue),
        errorBorder: borderTextformfield(Colors.red),
        focusedErrorBorder: borderTextformfield(Colors.red),
      ),
    );
  }

  OutlineInputBorder borderTextformfield(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color, width: 1.8),
    );
  }
}
