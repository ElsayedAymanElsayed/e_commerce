import 'package:e_commerce/core/utils/constants/const_app_router.dart';
import 'package:e_commerce/features/auth/login/ui/views/login_page.dart';
import 'package:e_commerce/features/auth/loginview_or_registerview/presentation/views/login_or_register.dart';
import 'package:e_commerce/features/auth/register/ui/views/register_view.dart';
import 'package:e_commerce/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:e_commerce/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: ConstAppRouter.idSplashview,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: ConstAppRouter.idOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: ConstAppRouter.idLoginview,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: ConstAppRouter.idloginorRegister,
        builder: (context, state) => LoginOrRegister(),
      ),
      GoRoute(
        path: ConstAppRouter.idRegisterView,
        builder: (context, state) => RegisterView(),
      ),
    ],
  );
}
