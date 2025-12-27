import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/loginorgistet.png',
      height: MediaQuery.of(context).size.height * .40,
      width: MediaQuery.of(context).size.width * .40,
      fit: BoxFit.fill,
    );
  }
}
