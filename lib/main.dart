import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    // note here createState method returns the State
  }
}

class _MyAppState extends State<MyApp> {
  int _index = 0;

  void _answerQuestion() {
    setState(() {
      _index = _index + 1;
    });

    print(_index);
  }

  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your fav color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your fav animal?',
        'answers': ['Dog', 'Cat', 'Lion', 'Horse'],
      },
      {
        'questionText': 'What\'s your fav food?',
        'answers': ['Chicken', 'Pudding', 'Noodles', 'Dosa'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First APP'),
        ),
        body: Column(
          children: [
            Question(
              questions[_index]['questionText'].toString(),
            ),
            // ... is spread operator what it does is it takes a list and they pull all the values in the list out of it and it add them to the surronding list as the indivual lists
            ...(questions[_index]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
