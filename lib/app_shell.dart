// lib/features/dashboard/presentation/app_shell.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  // This child represents the current page determined by GoRouter (DashboardView, MessageScreen, etc.)
  final Widget child;

  const AppShell({super.key, required this.child});

  // Helper method to get the current route index for the BottomNavigationBar
  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString();
    if (location.startsWith('/dashboard')) return 0;
    if (location.startsWith('/calendar')) return 1;
    if (location.startsWith('/messages')) return 2;
    if (location.startsWith('/profile')) return 3;
    return 0; // Default to Dashboard
  }

  // Helper method to navigate when a tab is tapped
  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/dashboard');
        break;
      case 1:
        context.go('/calendar');
        break;
      case 2:
        context.go('/messages');
        break;
      case 3:
        context.go('/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _calculateSelectedIndex(context);

    return PopScope(
      canPop: selectedIndex==0,
      onPopInvoked: (didPop) {
        // If the default back action was prevented (because canPop was false),
        // manually navigate back to the dashboard.
        if (didPop == false && selectedIndex != 0) {
          context.go('/dashboard');
        }
      },
      child: Scaffold(
        // The child (the page content) goes in the body
        body: child,

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: ClipRRect(
              child: BottomNavigationBar(
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.grey,
                selectedFontSize: 16,
                unselectedFontSize: 16,
                currentIndex: selectedIndex, // Use the dynamically calculated index
                type: BottomNavigationBarType.fixed,
                onTap: (index) => _onItemTapped(context, index), // Use the navigation handler
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard),
                    label: "Dashboard",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month),
                    label: "Calendar",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.messenger),
                    label: "Messages",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}