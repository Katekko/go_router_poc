import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

class BottomNavigationWidget extends StatelessWidget {
  final Widget child;
  const BottomNavigationWidget({required this.child, super.key});

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    if (location.startsWith(Routes.home)) {
      return 0;
    }
    if (location.startsWith(Routes.business)) {
      return 1;
    }
    if (location.startsWith(Routes.school)) {
      return 2;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go(Routes.home);
        break;
      case 1:
        context.go(Routes.home);
        break;
      case 2:
        context.go(Routes.home);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
      ),
    );
  }
}
