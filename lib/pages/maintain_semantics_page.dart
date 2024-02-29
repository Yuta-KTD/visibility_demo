import 'package:flutter/material.dart';
import 'package:visible_test/widget/maintain_semantics_text.dart';

class MaintainSemanticsPage extends StatelessWidget {
  const MaintainSemanticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Maintain Semantics Page"),
      ),
      body: const Center(child: MaintainSemanticsText(text: 'Semantics!')),
    );
  }
}
