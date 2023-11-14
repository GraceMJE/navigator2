import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screen/new_page.dart';

void main() {
  runApp(
      MaterialApp.router(
        routerConfig: GoRouter(
          initialLocation: '/',
          routes: [
            GoRoute(
                path: '/',
                name: 'home',
                builder: (context, _) => const HomeWidget()),
            GoRoute(
                path: '/',
                name: 'new1',
                builder: (context, _) => const NewPage()),
            GoRoute(
                path: '/',
                name: 'new2',
                builder: (context, _) => const NewPage2()),
          ]
        )
      ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('플러터에서 화면이동하는 두번째 방법'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to page'),
          onPressed: () {
            context.pushNamed('new1');
          },
        ),
      ),
    );
  }
}
