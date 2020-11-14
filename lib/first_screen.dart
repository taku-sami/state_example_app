import 'package:flutter/material.dart';
import 'package:state_example_app/second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstScreen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'あなたの名前を入力してください。',
              style: TextStyle(fontSize: 25),
            ),
            TextField(
              style: TextStyle(fontSize: 30),
              onChanged: (String inputName) {
                setState(() {
                  name = inputName;
                });
              },
            ),
            FlatButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SecondScreen(
                      name: name,
                    );
                  },
                ),
              ),
              child: Text(
                '送信',
                style: TextStyle(color: Colors.blueAccent, fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
