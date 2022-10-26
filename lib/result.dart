import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final VoidCallback resetHandler;
  

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase
  {
    var resultText = 'You did it!'; 
    if(resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    }else if (resultScore <= 12) {
        resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are ...strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override 
  Widget build(BuildContext context) 
  {
      return Center(
        child: Column(
          children: <Widget>[
            Text(
            resultPhrase,
            style:TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
            textAlign:TextAlign.center,
            ),
             ElevatedButton(
             style: ElevatedButton.styleFrom(
              // ignore: deprecated_member_use
              primary: Colors.blue,
            ),
            // ignore: sort_child_properties_last
            child: Text('Restart'),
           // ignore: unnecessary_this
            onPressed:resetHandler
           ),
          ],
        ),
       
      );
  }


}