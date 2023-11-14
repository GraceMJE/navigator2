import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screen/new_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomeWidget(),
  ));
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
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NewPage(),
                ));
          },
        ),
      ),
    );
  }
}
