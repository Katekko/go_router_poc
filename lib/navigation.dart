import 'package:go_router/go_router.dart';

import 'bottom_navigation.widget.dart';
import 'main.dart';
import 'routes.dart';

class Navigation {
  static final router = GoRouter(
    initialLocation: Routes.first,
    routes: [
      GoRoute(
        path: Routes.first,
        builder: (context, state) => const FirstScreen(),
      ),
      GoRoute(
        path: Routes.second,
        builder: (context, state) => const SecondScreen(),
      ),
      GoRoute(
        path: Routes.third,
        builder: (context, state) => const ThirdScreen(),
      ),
      ShellRoute(
        builder: (_, __, child) => BottomNavigationWidget(child: child),
        routes: [
          GoRoute(path: Routes.home, builder: (_, __) => const HomeScreen()),
          GoRoute(
            path: Routes.business,
            builder: (_, __) => const BusinessScreen(),
          ),
          GoRoute(
            path: Routes.school,
            builder: (_, __) => const SchoolScreen(),
          ),
        ],
      ),
    ],
  );
}
