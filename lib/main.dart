// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './answer.dart';
import "./question.dart";
//void main() {
//runApp(MyApp());
//}

void main() => (runApp(MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ToDo:implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final List questions = [
    {
      'questionText': "Which is your favourite car ?",
      'answers': ['BMW', 'Lexus', 'Ford', 'Mercedez-Benz']
    },
    {
      'questionText': "Which is your favourite T.V Show ?",
      'answers': ['Friends', 'TMKOC', 'The Big Bang Theory', 'Silicon Valley']
    },
    {
      'questionText': "What is your favourite animal ?",
      'answers': ['Horse', 'Lion', 'Rabbit', 'Cheetah']
    },
    {
      'questionText': "What is your favourite colour ?",
      'answers': ['Black', 'Red', 'Green', 'white']
    },
    {
      'questionText': "Who is your favourite Actor ?",
      'answers': ['Jhonny Depp', 'Leonardo Di Caprio', 'Al Pacino', 'SRK']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < questions.length) {
      print("We have more questions !");
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My first flutter"),
      ),
      body: Column(
        children: [
          Question(
            questions[_questionIndex]['questionText'],
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answers(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
