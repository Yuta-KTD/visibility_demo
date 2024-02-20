import 'package:flutter/material.dart';
import 'package:visible_test/pages/demo2.dart';
import 'package:visible_test/pages/demo3.dart';
import 'package:visible_test/pages/demo4.dart';
import 'package:visible_test/pages/home.dart';
import 'package:visible_test/pages/maintain_state_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/maintainStatePage': (context) => const MaintainStatePage(),
        '/demo2': (context) => const Demo2Page(),
        '/demo3': (context) => const Demo3Page(),
        '/demo4': (context) => const Demo4Page(),
      },
    );
  }
}
