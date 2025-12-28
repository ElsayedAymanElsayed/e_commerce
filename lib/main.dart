import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:e_commerce/core/utils/go_router/app_go_router.dart';
import 'package:e_commerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: ColorsApp.kPrimaryColorWhite,
        textTheme: GoogleFonts.poppinsTextTheme(
          ThemeData.light().textTheme.copyWith(
            headlineLarge: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: ColorsApp.kbuttomColorblue,
            ),
            headlineMedium: const TextStyle(
              color: ColorsApp.kGray,
              fontSize: 16,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
