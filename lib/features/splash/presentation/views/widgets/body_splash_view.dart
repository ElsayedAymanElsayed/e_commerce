import 'package:flutter/material.dart';

class BodySplashView extends StatelessWidget {
  const BodySplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Image.asset('assets/images/logo_app.png'))],
    );
  }
}
