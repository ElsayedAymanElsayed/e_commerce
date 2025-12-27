import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:e_commerce/core/utils/go_router/app_go_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: ColorsApp.kPrimaryColorWhite,
        textTheme: TextTheme(
          headlineLarge: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: ColorsApp.kbuttomColorblue,
          ),
          headlineMedium: const TextStyle(color: ColorsApp.kGray, fontSize: 16),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
