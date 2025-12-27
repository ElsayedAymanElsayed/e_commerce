import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  const Customtext({
    super.key,
    required this.text,
    this.size = 14,
    this.fontweight = FontWeight.normal,
    this.color = Colors.white,
    this.textAlign,
  });
  final String text;
  final double size;
  final FontWeight fontweight;
  final Color color;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: TextStyle(fontSize: size, fontWeight: fontweight, color: color),
    );
  }
}
