import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothpage extends StatelessWidget {
  const CustomSmoothpage({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: WormEffect(
        dotWidth: 8,
        dotHeight: 8,
        activeDotColor: ColorsApp.kbuttomColorblue,
      ),
    );
  }
}
