import 'package:e_commerce/core/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

class CustomContainerButtom extends StatelessWidget {
  const CustomContainerButtom({
    super.key,
    required this.backgroundColor,
    required this.text,
    this.ontap,
    this.border,
    this.colortext = Colors.white,
  });
  final Color backgroundColor;
  final VoidCallback? ontap;
  final String text;
  final BoxBorder? border;
  final Color colortext;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * .80,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Customtext(
            text: text,
            fontweight: FontWeight.bold,
            color: colortext,
          ),
        ),
      ),
    );
  }
}
