import 'package:flutter/material.dart';

class Demo3Page extends StatelessWidget {
  const Demo3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo 2"),
      ),
      body: const Center(
        child: Text("ここにデモ2の内容"),
      ),
    );
  }
}
