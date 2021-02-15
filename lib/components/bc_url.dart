import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/url_type.dart';

class BCUrl extends StatefulWidget {
  final int flexNum;
  bool two = false;
  final String text;
  final String style;
  final UrlType urlType;
  String text2;
  String style2;
  UrlType urlType2;

  BCUrl({Key key, this.flexNum, this.text, this.style, this.urlType})
      : super(key: key);

  BCUrl.Two(
      {Key key,
      this.flexNum,
      this.text,
      this.style,
      this.urlType,
      this.text2,
      this.style2,
      this.urlType2})
      : super(key: key) {
    two = true;
  }

  @override
  _BCUrlState createState() => _BCUrlState();
}

class _BCUrlState extends State<BCUrl> {
  void visitPage(String url) => launch('https://$url');

  void sendSMS(String number) => launch('sms:$number');

  void sendEmail(String email) => launch('mailto:$email');

  void launchUrl(UrlType urlType, String text) {
    switch (urlType) {
      case UrlType.url:
        visitPage(text);
        break;
      case UrlType.sms:
        sendSMS('');
        break;
      case UrlType.email:
        sendEmail(text);
        break;
      default:
        print('Not a valid type');
        break;
    }
  }

  List<Widget> smsGesture(TextStyle style) {
    return [
      GestureDetector(
          onTap: () => launchUrl(widget.urlType, widget.text),
          child: Container(child: Text(widget.text, style: style))),
    ];
  }

  List<Widget> urlGesture(TextStyle style, TextStyle style2) {
    return [
      GestureDetector(
          onTap: () => launchUrl(widget.urlType, widget.text),
          child: Container(child: Text(widget.text, style: style))),
      GestureDetector(
          onTap: () => launchUrl(widget.urlType2, widget.text2),
          child: Container(child: Text(widget.text2, style: style2)))
    ];
  }

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
      flex: widget.flexNum,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: widget.two
              ? urlGesture(styleMap[widget.style], styleMap[widget.style2])
              : smsGesture(styleMap[widget.style])),
    );
  }
}
