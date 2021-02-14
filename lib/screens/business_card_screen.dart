import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/bc_image.dart';
import '../components/bc_text.dart';

class BusinessCardScreen extends StatefulWidget {
  State createState() => BusinessCardScreenState();
}

class BusinessCardScreenState extends State<BusinessCardScreen> {
  double paddingHorizontal(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.05;

  double paddingVertical(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.05;

  void visitPage(String url) => launch('$url');
  void sendSMS(String number) => launch('sms:$number');
  void sendEmail(String email) => launch('mailto:$email');

  final bc_image =
      BCImage(flexNum: 3, item: Image.asset('assets/images/keane.jpg'));
  final bc_name = BCText(flexNum: 2, text: 'Keane', style: 'headline4');

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: MediaQuery.of(context).orientation == Orientation.portrait
          ? Alignment.topCenter
          : Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal(context),
            vertical: paddingVertical(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bc_image,
            bc_name,
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'The Goodest Boi',
                  style: Theme.of(context).textTheme.subtitle1,
                )
              ]),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                    onTap: () => sendSMS(''),
                    child: Container(
                        child: Text(
                      '888 555 5512',
                      style: Theme.of(context).textTheme.subtitle2,
                    )))
              ]),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => visitPage('https://github.com'),
                      child: Container(
                        child: Text(
                          'github.com',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () => sendEmail(''),
                        child: Container(
                            child: Text(
                          'keane@gmail.com',
                          style: Theme.of(context).textTheme.bodyText1,
                        )))
                  ]),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: MediaQuery.of(context).orientation == Orientation.portrait
                  ? 10
                  : 0,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
