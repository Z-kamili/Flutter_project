import 'package:flutter/material.dart';
// void main() {

//  runApp(MyApp());
   
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {

        var question = [
          'What\'s your favorite color?',
          'What\'s your favorite animal?',
        ];

        return MaterialApp(home:Scaffold(
           
           appBar: AppBar(title: Text('My First App'),),//AppBar
           body: Column(children:[
              Text('The question!'),
              ElevatedButton(
                child:Text('Answer 1'),
                onPressed:null),
              ElevatedButton(
                child:Text('Answer 2'),
                onPressed:null),
              ElevatedButton(
                child:Text('Answer 3'),
                onPressed:null),
           ],),
           //Column

        ),

        );

   }

}