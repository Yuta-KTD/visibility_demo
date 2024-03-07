import 'package:flutter/material.dart';
import 'package:visible_test/widget/fade_logo.dart';

class MaintainAnimationPage extends StatefulWidget {
  const MaintainAnimationPage({super.key});

  @override
  State<MaintainAnimationPage> createState() => _MaintainAnimationPageState();
}

class _MaintainAnimationPageState extends State<MaintainAnimationPage>
    with SingleTickerProviderStateMixin {
  bool _isVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maintain Animation Demo'),
        ),
        body: Center(
          child: Column(
            children: [
              Visibility(
                visible: _isVisible,
                maintainState: true,
                maintainAnimation: false,
                child: const FadeLogo(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _toggleVisibility,
                child: Text(_isVisible ? 'Hide' : 'Show'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
