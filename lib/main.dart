// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
// void main() {

//  runApp(MyApp());
   
// }

// ignore: prefer_const_constructors
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  void answerQuestion()
  {
    // ignore: avoid_print
    print('Answer chosen!');
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
              Text('The question!'),
              ElevatedButton(
                // ignore: sort_child_properties_last
                child: Text('Answer 1'),
                onPressed:answerQuestion),
              ElevatedButton(
                // ignore: sort_child_properties_last
                child:Text('Answer 2'),
                onPressed:answerQuestion),
              ElevatedButton(
                // ignore: sort_child_properties_last
                child:Text('Answer 3'),
                onPressed:answerQuestion),
           ],),
           //Column

        ),

        );

   }

}