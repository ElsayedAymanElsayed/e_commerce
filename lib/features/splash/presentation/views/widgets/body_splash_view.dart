// ignore_for_file: strict_top_level_inference
import 'package:e_commerce/core/utils/constants/assets_app.dart';
import 'package:e_commerce/core/utils/constants/const_app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BodySplashView extends StatefulWidget {
  const BodySplashView({super.key});

  @override
  State<BodySplashView> createState() => _BodySplashViewState();
}

class _BodySplashViewState extends State<BodySplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      navigtorToPage(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Image.asset(AssetsApp.kLogo))],
    );
  }

  void navigtorToPage(context) {
    if (!mounted) return;
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      GoRouter.of(context).push(ConstAppRouter.idOnboardingView);
    });
  }
}
