import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/url_type.dart';
import 'bc_gesture.dart';

class BCUrl extends StatelessWidget {
  final int flexNum;
  // BCGesture bcGesture;
  // BCGesture bcGesture2;
  bool two = false;
  final String text;
  final String style;
  final UrlType urlType;
  String text2;
  String style2;
  UrlType urlType2;

  BCUrl({Key key, this.flexNum, this.text, this.style, this.urlType})
      : super(key: key);
  // {
  // bcGesture = BCGesture(text: text, style: style, urlType: urlType);
  // bcGesture2 = BCGesture();
  //   two = false;
  // }

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
          onTap: () => launchUrl(urlType, text),
          child: Container(child: Text(text, style: style))),
    ];
  }

  List<Widget> urlGesture(TextStyle style, TextStyle style2) {
    return [
      GestureDetector(
          onTap: () => launchUrl(urlType, text),
          child: Container(child: Text(text, style: style))),
      GestureDetector(
          onTap: () => launchUrl(urlType2, text2),
          child: Container(child: Text(text2, style: style2)))
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
      flex: flexNum,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: two
              ? urlGesture(styleMap[style], styleMap[style2])
              : smsGesture(styleMap[style])
          //
          // GestureDetector(
          //     onTap: () => launchUrl(urlType, text),
          //     child: Container(child: Text(text, style: styleMap[style])))
          ),
    );
  }
}
