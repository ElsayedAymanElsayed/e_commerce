import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:flutter/material.dart';

class CustomCircularIndictator extends StatelessWidget {
  const CustomCircularIndictator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: const CircularProgressIndicator(color: ColorsApp.kTextfieldColor),
    );
  }
}
