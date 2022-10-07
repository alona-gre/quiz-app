import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'ok';
    } else if (resultScore <= 16) {
      resultText = 'strange';
    } else {
      resultText = 'bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              child: Text('Restart the quiz'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              onPressed: resetHandler),
        ],
      ),
    );
  }
}
