import 'package:go_router/go_router.dart';
import 'package:test/presentation/auth/pages/registerPage.dart';
import 'package:test/presentation/auth/pages/signinPage.dart';
import 'package:test/presentation/splash/pages/splash.dart';
import 'package:test/router/app_name.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splashPage.path,
  routes: [
    GoRoute(
      path: AppRoutes.splashPage.path,
      builder: (context, state) => const SplashPage(),
    ),
    //Login  In
    GoRoute(
      path: AppRoutes.login.path,
      builder: (context, state) => const SplashPage(),
    ),

    //Register
    GoRoute(
      path: AppRoutes.signinPage.path,
      builder: (context, state) => const SigninPage(),
    ),

    GoRoute(
      path: AppRoutes.register.path,
      builder: (context, state) => const RegisterPage(),
    ),
    // Add more routes here
  ],
);
