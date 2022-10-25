// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Answer extends StatelessWidget {

 final VoidCallback selectHandler;
 final String answerText;

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
      onPressed:this.selectHandler
  ),

  );

}

}