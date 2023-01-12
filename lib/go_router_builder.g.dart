// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_router_builder.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $firstScreenRoute,
    ];

GoRoute get $firstScreenRoute => GoRouteData.$route(
      path: '/first',
      factory: $FirstScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'second',
          factory: $SecondScreenRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'third',
              factory: $ThirdScreenRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'home',
          factory: $HomeScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'business',
          factory: $BusinessScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'school',
          factory: $SchoolScreenRouteExtension._fromState,
        ),
      ],
    );

extension $FirstScreenRouteExtension on FirstScreenRoute {
  static FirstScreenRoute _fromState(GoRouterState state) => FirstScreenRoute();

  String get location => GoRouteData.$location(
        '/first',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $SecondScreenRouteExtension on SecondScreenRoute {
  static SecondScreenRoute _fromState(GoRouterState state) =>
      SecondScreenRoute();

  String get location => GoRouteData.$location(
        '/first/second',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $ThirdScreenRouteExtension on ThirdScreenRoute {
  static ThirdScreenRoute _fromState(GoRouterState state) => ThirdScreenRoute();

  String get location => GoRouteData.$location(
        '/first/second/third',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) => HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/first/home',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $BusinessScreenRouteExtension on BusinessScreenRoute {
  static BusinessScreenRoute _fromState(GoRouterState state) =>
      BusinessScreenRoute();

  String get location => GoRouteData.$location(
        '/first/business',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $SchoolScreenRouteExtension on SchoolScreenRoute {
  static SchoolScreenRoute _fromState(GoRouterState state) =>
      SchoolScreenRoute();

  String get location => GoRouteData.$location(
        '/first/school',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
