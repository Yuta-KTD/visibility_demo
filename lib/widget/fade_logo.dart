import 'package:flutter/material.dart';

class FadeLogo extends StatefulWidget {
  const FadeLogo({super.key});

  @override
  State<FadeLogo> createState() => _FadeLogoState();
}

class _FadeLogoState extends State<FadeLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    _animationController.forward();
    _animationController.addListener(() {
      print('Animation value: ${_animationController.value}');
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _restartAnimation() {
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

        const SizedBox(height: 20), // ボタン間のスペースを追加
        Text('Is animating: ${_animationController.isAnimating}'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _restartAnimation,
          child: const Text('Restart Animation'),
        ),
      ],
    );
  }
}
