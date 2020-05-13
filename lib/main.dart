import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Welcome to App',
home: Scaffold(
appBar: AppBar(
title: Text('Welcome to App'),
),
body: Center(
child: RandomWords()
),
),
);
}
}

class RandomWords extends StatefulWidget {
@override
State<StatefulWidget> createState() {
return RandomWordsState();
}
}

class RandomWordsState extends State<RandomWords> {
@override
Widget build(BuildContext context) {
final wordPair = WordPair.random();
return Text(wordPair.asPascalCase);
}
}