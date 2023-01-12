import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_route/go_router_builder.dart';

class BottomNavigationWidget extends StatelessWidget {
  final Widget child;
  const BottomNavigationWidget({required this.child, super.key});

  static int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).location;
    if (location.contains('home')) {
      return 0;
    }
    if (location.contains('business')) {
      return 1;
    }
    if (location.contains('school')) {
      return 2;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        HomeScreenRoute().go(context);
        break;
      case 1:
        BusinessScreenRoute().go(context);
        break;
      case 2:
        SchoolScreenRoute().go(context);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
