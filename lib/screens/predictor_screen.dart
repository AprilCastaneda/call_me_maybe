import 'package:flutter/material.dart';
import '../models/answer.dart';

class PredictorScreen extends StatefulWidget {
  @override
  _PredictorScreenState createState() => _PredictorScreenState();
}

class _PredictorScreenState extends State<PredictorScreen> {
  var answer = Answer();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          fit: FlexFit.loose,
          flex: 5,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Call Me... Maybe?',
                style: Theme.of(context).textTheme.headline5),
          ]),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: MediaQuery.of(context).orientation == Orientation.portrait
              ? 2
              : 5,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  answer.randomAnswer();
                });
              },
              child: Text(
                'Ask a question... tap for the Answer',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ]),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${answer.currentAnswer}',
                  style: Theme.of(context).textTheme.headline5),
            ],
          ),
        ),
      ],
    );
  }
}
