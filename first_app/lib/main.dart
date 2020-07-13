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
  static const questions = [
    {
      'questionText': 'What is your favorite colour?',
      'answers': [
        {'text': 'Black', 'score': 9},
        {'text': 'Blue', 'score': 3},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 2}
      ],
    },
    {
      'questionText': 'What is your favorite car?',
      'answers': [
        {'text': 'Tesla', 'score': 6},
        {'text': 'Lambo', 'score': 1},
        {'text': 'Swift', 'score': 7},
        {'text': 'Accent', 'score': 10}
      ],
    },
    {
      'questionText': 'What is your favorite food?',
      'answers': [
        {'text': 'Lasagna', 'score': 9},
        {'text': 'Apple', 'score': 5},
        {'text': 'Avocado', 'score': 5},
        {'text': 'Spinach', 'score': 10}
      ],
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('We have more questions');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<Map<String, Object>>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer['text']);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
