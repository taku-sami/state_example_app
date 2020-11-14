import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key, this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'こんにちは',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$name さん',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
