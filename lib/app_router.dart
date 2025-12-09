import 'package:go_router/go_router.dart';
import 'package:suku_mobile/features/auth/presentation/login_screen.dart';
import 'package:suku_mobile/features/auth/presentation/signup_screen.dart';
import 'package:suku_mobile/features/auth/presentation/welcome_screen.dart';
import 'package:suku_mobile/features/dashboard/presentation/dashboard_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Welcomescreen()),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/signup', builder: (context, state) => const SignupScreen()),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) {
        final name = state.extra as String;
        return DashboardScreen(name: name);
      },
    ),
  ],
);
