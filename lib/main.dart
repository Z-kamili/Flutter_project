// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './answer.dart';
import './question.dart';
import './quiz.dart';

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
  var _totalScore = 0;


  final _questions = const [
        {
          'questionText':'What is your favorite color?',
          'answers':[
            {'text':'Black','score':10},
            {'text':'Red','score':5},
            {'text':'Green','score':3},
            {'text':'White','score':1}
            ],
        },
        {
          'questionText':'What is your favorite animal?',
          'answers':[
            {'text':'Rabbit','score':3},
            {'text':'Snake','score':11},
            {'text':'Elephant','score':5},
            {'text':'Lion','score':9}
          ],
        },
        {
          'questionText':'Who is your favorite player?',
          'answers':[
             {'text':'Ronaldo','score':1},
             {'text':'Messi','score':1},
             {'text':'Mané','score':1},
             {'text':'Salah','score':1}
          ],
        },
];



  void _answerQuestion(int score)
  {
    // List<Map<String, Object>>
    // ignore: unused_local_variable
    // ignore: avoid_print
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    }); 
    // ignore: avoid_print
    print(_questionIndex);
    if(_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more question!');
    }

  }

  @override
  Widget build(BuildContext context) {


        // ignore: duplicate_ignore, duplicate_ignore
        return MaterialApp(home:Scaffold(
           // ignore: prefer_const_constructors
           appBar: AppBar(title: Text('My First App'),),//AppBar
           // ignore: duplicate_ignore
           body : _questionIndex < _questions.length ? Quiz(answerQuestion : _answerQuestion, 
                                                            questionIndex: _questionIndex ,
                                                            questions: _questions) 
                : Result(_totalScore),
        ),
        );

   }

}