import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import 'bottom_navigation.widget.dart';
import 'main.dart';
import 'routes.dart';

// TODO: Se eu defini a child aqui, o que a child do build faz?

class Navigation {
  static final router = GoRouter(
    initialLocation: Routes.first,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: Routes.first,
        builder: (_, __) => const FirstScreen(),
        routes: [
          GoRoute(
            path: Routes.second,
            builder: (_, __) => const SecondScreen(),
            routes: [
              GoRoute(
                path: Routes.third,
                builder: (_, __) => const ThirdScreen(),
              ),
            ],
          ),
          ShellRoute(
            builder: (_, __, child) => BottomNavigationWidget(child: child),
            routes: [
              GoRoute(
                path: Routes.home,
                pageBuilder: (_, state) => fadeAnimation(
                  const HomeScreen(),
                  key: state.pageKey,
                ),
              ),
              GoRoute(
                path: Routes.business,
                pageBuilder: (_, state) => fadeAnimation(
                  const BusinessScreen(),
                  key: state.pageKey,
                ),
              ),
              GoRoute(
                path: Routes.school,
                pageBuilder: (_, state) => fadeAnimation(
                  const SchoolScreen(),
                  key: state.pageKey,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

CustomTransitionPage fadeAnimation(
  Widget child, {
  required ValueKey<String> key,
}) {
  return CustomTransitionPage(
    key: key,
    child: child,
    transitionsBuilder: (_, animation, __, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
  );
}
