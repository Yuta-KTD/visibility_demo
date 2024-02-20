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
                Navigator.pushNamed(context, '/demo2');
              },
              child: const Text('Demo 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/demo3');
              },
              child: const Text('Demo 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/demo4');
              },
              child: const Text('Demo 4'),
            ),
          ],
        ),
      ),
    );
  }
}
