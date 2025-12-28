import 'package:flutter/material.dart';

class CustomContainerButtom extends StatelessWidget {
  const CustomContainerButtom({
    super.key,
    required this.backgroundColor,
    this.ontap,
    this.border,
    required this.widget,
  });
  final Color backgroundColor;
  final VoidCallback? ontap;
  final BoxBorder? border;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * .90,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: widget),
      ),
    );
  }
}
