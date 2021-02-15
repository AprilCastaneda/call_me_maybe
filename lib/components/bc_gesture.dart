import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/url_type.dart';
import 'bc_url.dart';

class BCGesture extends StatelessWidget {
  final String text;
  final String style;
  final UrlType urlType;

  BCGesture({Key key, this.text, this.style, this.urlType}) : super(key: key);

  void visitPage(String url) => launch('https://$url');
  void sendSMS(String number) => launch('sms:$number');
  void sendEmail(String email) => launch('mailto:$email');

  void launchUrl(UrlType urlType, String text) {
    switch (urlType) {
      case UrlType.url:
        visitPage(text);
        break;
      case UrlType.sms:
        sendSMS(text);
        break;
      case UrlType.email:
        sendEmail(text);
        break;
      default:
        print('Not a valid type');
        break;
    }
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
    return GestureDetector(
        onTap: () => launchUrl(urlType, text),
        child: Container(child: Text(text, style: styleMap[style])));
  }
}

            //       children: [
            //         GestureDetector(
            //           onTap: () => visitPage('https://github.com'),
            //           child: Container(
            //             child: Text(
            //               'github.com',
            //               style: Theme.of(context).textTheme.bodyText1,
            //             ),
            //           ),
            //         ),
