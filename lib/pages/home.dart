import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visibility Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/maintainStatePage');
              },
              child: const Text('Maintain State Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/maintainAnimationPage');
              },
              child: const Text('Maintain Animation Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/maintainInteractivityPage');
              },
              child: const Text('Maintain Interactivity Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/maintainSemanticsPage');
              },
              child: const Text('Maintain Semantics Page'),
            ),
          ],
        ),
      ),
    );
  }
}
