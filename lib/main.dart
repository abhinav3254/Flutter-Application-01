import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your fav color?', 'What\'s your fav animal?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First APP'),
        ),
        body: Column(
          children: const [
            Text('The question!'),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Text('Hello Abhinav'),
//     );
//   }
// }
