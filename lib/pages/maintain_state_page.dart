import 'package:flutter/material.dart';

class MaintainStatePage extends StatefulWidget {
  const MaintainStatePage({super.key});

  @override
  State<MaintainStatePage> createState() => _MaintainStatePageState();
}

class _MaintainStatePageState extends State<MaintainStatePage> {
  bool _isVisible = true;
  bool _maintainState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maintain State'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                },
                child: Text(_isVisible ? 'Hide List' : 'Show List'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _maintainState = !_maintainState;
                  });
                },
                child: Text(
                  _maintainState ? 'maintainState false' : 'maintainState true',
                ),
              ),
            ],
          ),
          Expanded(
            child: Visibility(
              maintainState: _maintainState, // スクロール位置を保持する
              visible: _isVisible,
              child: ListView.builder(
                itemCount: 100, // 長いリストを生成
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('利用規約 $index'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
