import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:flutter/material.dart';

class CustomElevatedbuttom extends StatelessWidget {
  const CustomElevatedbuttom({
    super.key,
    required this.onpressed,
    required this.text,
  });
  final VoidCallback onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: ColorsApp.kbuttomColor),
      onPressed: onpressed,
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
