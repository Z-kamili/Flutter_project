// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

// void main() {

//  runApp(MyApp());
   
// }

// ignore: prefer_const_constructors
void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {

     @override 
     State<StatefulWidget> createState() {
      return _MyAppState();
     }

}
class _MyAppState extends State<MyApp> {

  var _questionIndex = 0;



  void _answerQuestion()
  {

    // ignore: avoid_print
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);

  }

  @override
  Widget build(BuildContext context) {

        // ignore: unused_local_variable
        var question = [
          'What\'s your favorite color?',
          'What\'s your favorite animal?',
        ];

        // ignore: duplicate_ignore, duplicate_ignore
        return MaterialApp(home:Scaffold(
           
           // ignore: prefer_const_constructors
           appBar: AppBar(title: Text('My First App'),),//AppBar
           // ignore: duplicate_ignore
           body: Column(children:[
              // ignore: prefer_const_constructors
              Question(question[_questionIndex]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
           ],),
        ),

        );

   }

}