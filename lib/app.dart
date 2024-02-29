import 'package:flutter/material.dart';
import 'package:visible_test/pages/maintain_animation_page.dart';
import 'package:visible_test/pages/maintain_interactivity_page.dart';
import 'package:visible_test/pages/maintain_semantics_page.dart';
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
        '/maintainAnimationPage': (context) => const MaintainAnimationPage(),
        '/maintainInteractivityPage': (context) =>
            const MaintainInteractivityPage(),
        '/maintainSemanticsPage': (context) => const MaintainSemanticsPage(),
      },
    );
  }
}
