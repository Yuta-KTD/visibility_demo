import 'package:flutter/material.dart';

class FadeLogo extends StatefulWidget {
  const FadeLogo({super.key});

  @override
  State<FadeLogo> createState() => _FadeLogoState();
}

class _FadeLogoState extends State<FadeLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    _animationController.forward();
    _animationController.addListener(() {
      setState(() {
        _counter++;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _restartAnimation() {
    setState(() {
      _counter = 0;
    });
    _animationController.reset();
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FadeTransition(
          opacity: _animationController,
          child: const FlutterLogo(size: 200.0),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _restartAnimation,
          child: const Text('Restart Animation'),
        ),
        const SizedBox(height: 20),
        Text(
          '_counter: $_counter',
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ],
    );
  }
}
