import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
    // note here createState method returns the State
  }
}

class MyAppState extends State<MyApp> {
  int index = 0;

  void answerQuestion() {
    setState(() {
      index = index + 1;
    });

    print(index);
  }

  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your fav color?', 'What\'s your fav animal?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First APP'),
        ),
        body: Column(
          children: [
            Text(questions[index]),
            ElevatedButton(
              onPressed: (answerQuestion),
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: ((() => print('Answer'))),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}
