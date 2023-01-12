import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_route/routes.dart';

import 'navigation.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Navigation.router,
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('First Screen'),
            ElevatedButton(
              onPressed: () => context.push(Routes.second),
              child: const Text('Go to Second'),
            ),
            ElevatedButton(
              onPressed: () => context.push(Routes.home),
              child: const Text('OPEN NESTED NAVIGATION'),
            )
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Second Screen'),
            ElevatedButton(
              onPressed: () => context.push(Routes.third),
              child: const Text('Go to Third'),
            )
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Third Screen'),
            ElevatedButton(
              onPressed: () => context.go(Routes.first),
              child: const Text('Back to First'),
            )
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            ElevatedButton(
              onPressed: () => context.go(Routes.first),
              child: const Text('Back to First'),
            )
          ],
        ),
      ),
    );
  }
}

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Business Screen')));
  }
}

class SchoolScreen extends StatelessWidget {
  const SchoolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('School Screen'),
            ElevatedButton(
              onPressed: () => context.go(Routes.second),
              child: const Text('Back to second'),
            )
          ],
        ),
      ),
    );
  }
}
