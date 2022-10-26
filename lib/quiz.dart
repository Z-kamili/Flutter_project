// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {

final List<Map<String,Object>> questions;
final int questionIndex;
final VoidCallback answerQuestion;

 Quiz(
   {
   required this.questions, 
   required this.answerQuestion, 
   required this.questionIndex
   }
  );

 @override 
 Widget build(BuildContext context) 
 {
      return  
      Column(children:[
              // ignore: prefer_const_constructors
              Question(questions[questionIndex]['questionText'] as String), // Question
              ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer){
                return Answer(answerQuestion,answer);
              }).toList()
           ],);
 }

}