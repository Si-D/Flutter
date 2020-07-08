import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your favorite colour?',
        'answers': ['Black', 'Blue', 'Red', 'Green'],
      },
      {
        'questionText': 'What is your favorite car?',
        'answers': ['Black', 'Blue', 'Red', 'Green'],
      },
      {
        'questionText': 'What is your favorite food?',
        'answers': ['Black', 'Blue', 'Red', 'Green'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
