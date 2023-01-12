import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_route/routes.dart';

import 'main.dart';

part 'go_router_builder.g.dart';

@TypedGoRoute<FirstScreenRoute>(
  path: Routes.first,
  routes: [
    TypedGoRoute<SecondScreenRoute>(
      path: Routes.second,
      routes: [TypedGoRoute<ThirdScreenRoute>(path: Routes.third)],
    ),
    TypedGoRoute<HomeScreenRoute>(path: Routes.home),
    TypedGoRoute<BusinessScreenRoute>(path: Routes.business),
    TypedGoRoute<SchoolScreenRoute>(path: Routes.school),
  ],
)
@immutable
class FirstScreenRoute extends GoRouteData {
  @override
  Widget build(context, state) => const FirstScreen();
}

@immutable
class SecondScreenRoute extends GoRouteData {
  @override
  Widget build(context, state) => const SecondScreen();
}

@immutable
class ThirdScreenRoute extends GoRouteData {
  @override
  Widget build(context, state) => const ThirdScreen();
}

@immutable
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(context, state) => const HomeScreen();
}

@immutable
class BusinessScreenRoute extends GoRouteData {
  @override
  Widget build(context, state) => const BusinessScreen();
}

@immutable
class SchoolScreenRoute extends GoRouteData {
  @override
  Widget build(context, state) => const SchoolScreen();
}
