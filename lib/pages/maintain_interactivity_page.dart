import 'package:flutter/material.dart';

class MaintainInteractivityPage extends StatefulWidget {
  const MaintainInteractivityPage({super.key});

  @override
  MaintainInteractivityPageState createState() =>
      MaintainInteractivityPageState();
}

class MaintainInteractivityPageState extends State<MaintainInteractivityPage> {
  // カウンターの値
  int _counter = 0;
  // ボタンの表示状態を管理するフラグ
  bool _isButtonVisible = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toggleButtonVisibility() {
    setState(() {
      _isButtonVisible = !_isButtonVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Interactivity Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('カウンター'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Visibility(
                maintainSize: true, // maintainAnimation: trueが必要
                maintainAnimation: true, // maintainState: trueが必要
                maintainState: true,
                maintainInteractivity: true, // maintainSize: trueが必要
                visible: _isButtonVisible,
                child: ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('Increment'),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _toggleButtonVisibility,
                child: Text(_isButtonVisible ? 'Hide Button' : 'Show Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
