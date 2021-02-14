import 'package:flutter/material.dart';
import '../styles.dart';

class BCText extends StatelessWidget {
  final int flexNum;
  final String text;
  final String style;

  const BCText({Key key, this.flexNum, this.text, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleMap = {
      'headline1': Theme.of(context).textTheme.headline1,
      'headline2': Theme.of(context).textTheme.headline2,
      'headline3': Theme.of(context).textTheme.headline3,
      'headline4': Theme.of(context).textTheme.headline4,
      'headline5': Theme.of(context).textTheme.headline5,
      'headline6': Theme.of(context).textTheme.headline6,
      'subtitle1': Theme.of(context).textTheme.subtitle1,
      'subtitle2': Theme.of(context).textTheme.subtitle2,
      'bodyText1': Theme.of(context).textTheme.bodyText1,
      'bodyText2': Theme.of(context).textTheme.bodyText2
    };
    return Flexible(
        fit: FlexFit.tight,
        flex: flexNum,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(text, style: styleMap[style])],
        ));
  }
}
