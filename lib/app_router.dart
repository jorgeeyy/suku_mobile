import 'package:go_router/go_router.dart';
import 'package:suku_mobile/features/auth/presentation/login_screen.dart';
import 'package:suku_mobile/features/auth/presentation/signup_screen.dart';
import 'package:suku_mobile/features/auth/presentation/welcome_screen.dart';
import 'package:suku_mobile/features/dashboard/presentation/dashboard_screen.dart'; // Assuming this is now your content-only view
import 'features/dashboard/presentation/contact_teacher.dart';
import 'app_shell.dart'; // Your AppShell that holds the BottomNavigationBar

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // --- 1. Independent Routes (No Nav Bar) ---

    // Initial Welcome screen
    GoRoute(path: '/', builder: (context, state) => const Welcomescreen()),

    // Login and Signup screens
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/signup', builder: (context, state) => const SignupScreen()),

    // --- 2. ShellRoute (Persistent Nav Bar) ---

    ShellRoute(
      // AppShell wraps all child routes, providing the Scaffold and BottomNavigationBar
      builder: (context, state, child) {
        return AppShell(child: child);
      },
      routes: [
        // Tab 1: Dashboard
        GoRoute(
          path: '/dashboard',
          name: 'dashboard',
          builder: (context, state) {
            // FIX: Safely check for null. Use 'User' as fallback for tab navigation.
            // On initial login, state.extra will contain the name.
            final name = state.extra as String? ?? "User";

            // NOTE: DashboardScreen should probably be renamed DashboardView
            // if you moved the Scaffold/NavBar out.
            return DashboardScreen(name: name);
          },
        ),

        // Tab 2: Calendar (Placeholder)
        // You should define this route once you create the CalendarScreen

        // Tab 3: Messages
        GoRoute(
          path: '/messages',
          name: 'messages',
          // Assuming ContactTeacher is the Messages page for now
          builder: (context, state) => const ContactTeacher(),
        ),

        // Tab 4: Profile (Placeholder)
        // You should define this route once you create the ProfileScreen

        // --- 3. Optional: Independent route layered on top of the shell ---
        // If 'contact-teacher' is a detail screen that should temporarily hide the Nav Bar,
        // it should go here *OR* outside the ShellRoute entirely.

        // GoRoute(
        //   path: '/contact-teacher-detail',
        //   builder: (context, state) => const ContactTeacher(),
        // ),
      ],
    ),
  ],
);