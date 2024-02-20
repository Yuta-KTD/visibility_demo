import 'package:flutter/material.dart';

class Demo2Page extends StatelessWidget {
  const Demo2Page({super.key});

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
