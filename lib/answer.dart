// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Answer extends StatelessWidget {

 final VoidCallback selectHandler;
 final String answerText;

 // ignore: use_key_in_widget_constructors
 Answer(this.selectHandler,this.answerText);

@override 
Widget build(BuildContext context) {

  // ignore: sized_box_for_whitespace
  return Container(
    width: double.infinity,
    child : ElevatedButton(
    style: ElevatedButton.styleFrom(
       // ignore: deprecated_member_use
       primary: Colors.blue,
    ),
      // ignore: sort_child_properties_last
      child: Text(answerText),
      // ignore: unnecessary_this
      onPressed:this.selectHandler
  ),
  );

}

}