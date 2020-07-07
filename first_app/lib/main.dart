import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Question Answered');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite colour?',
      'What is your favorite car?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Text(
              questions[0],
            ),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 Chosen!'),
            ),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
