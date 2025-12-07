import 'package:go_router/go_router.dart';
import 'package:suku_mobile/screens/onboardingScreens/login_screen.dart';
import 'package:suku_mobile/screens/onboardingScreens/signup_screen.dart';
import 'package:suku_mobile/screens/onboardingScreens/welcome_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Welcomescreen()),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/signup', builder: (context, state) => const SignupScreen()),
  ],
);
