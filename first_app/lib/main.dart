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
        'answers': ['Black', 'Blue', 'Red', 'Green'],
      },
      {
        'questionText': 'What is your favorite car?',
        'answers': ['Tesla', 'Lambo', 'Swift', 'Accent'],
      },
      {
        'questionText': 'What is your favorite food?',
        'answers': ['Lasagna', 'Apple', 'Avocado', 'Spinach'],
      }
    ];
  var _questionIndex = 0;
  void _answerQuestion() {
    
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if(_questionIndex < questions.length){
      print('We have more questions');
    }
    else{
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
        body: _questionIndex < questions.length ? Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ) : Center(child: Text('You did it!'),),
      ),
    );
  }
}
