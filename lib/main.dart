import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_route/go_router_builder.dart';

import 'navigation.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: Navigation.router);
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('First Screen'),
            ElevatedButton(
              onPressed: () => SecondScreenRoute().go(context),
              child: const Text('Go to Second'),
            ),
            ElevatedButton(
              onPressed: () => ThirdScreenRoute().go(context),
              child: const Text('Go to Third'),
            ),
            ElevatedButton(
              onPressed: () => HomeScreenRoute().go(context),
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

  void openDialog(BuildContext context) {
    showDialog(context: context, builder: (_) => const TestDialog());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Second Screen'),
            ElevatedButton(
              onPressed: () => ThirdScreenRoute().go(context),
              child: const Text('Go to Third'),
            ),
            ElevatedButton(
              onPressed: () => openDialog(context),
              child: const Text('Open dialog'),
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
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Third Screen'),
            ElevatedButton(
              onPressed: () => FirstScreenRoute().go(context),
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
              onPressed: () => ThirdScreenRoute().go(context),
              child: const Text('Back to Third'),
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
              onPressed: () => SecondScreenRoute().go(context),
              child: const Text('Back to second'),
            )
          ],
        ),
      ),
    );
  }
}

class TestDialog extends StatelessWidget {
  const TestDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Teste dialog'),
      actions: [
        TextButton(onPressed: () => context.pop(), child: const Text('voltar'))
      ],
    );
  }
}
