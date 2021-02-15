import 'package:call_me_maybe/components/bc_url.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/bc_image.dart';
import '../components/bc_text.dart';
import '../components/bc_url.dart';

import '../models/url_type.dart';

class BusinessCardScreen extends StatefulWidget {
  State createState() => BusinessCardScreenState();
}

class BusinessCardScreenState extends State<BusinessCardScreen> {
  double paddingHorizontal(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.05;

  double paddingVertical(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.05;

  final bc_image =
      BCImage(flexNum: 3, item: Image.asset('assets/images/keane.jpg'));
  final bc_name = BCText(flexNum: 2, text: 'Keane', style: 'headline4');
  final bc_title =
      BCText(flexNum: 1, text: 'The Goodest Boi', style: 'subtitle1');
  final bc_phone = BCUrl(
      flexNum: 2,
      text: '888 555 5512',
      style: 'subtitle2',
      urlType: UrlType.sms);
  // void visitPage(String url) => launch('https://$url');
  // void sendSMS(String number) => launch('sms:$number');
  // void sendEmail(String email) => launch('mailto:$email');

  // void launchUrl(UrlType urlType, String text) {
  //   switch (urlType) {
  //     case UrlType.url:
  //       visitPage(text);
  //       break;
  //     case UrlType.sms:
  //       sendSMS(text);
  //       break;
  //     case UrlType.email:
  //       sendEmail(text);
  //       break;
  //     default:
  //       print('Not a valid type');
  //       break;
  //   }

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
            bc_title,
            bc_phone,
            // Flexible(
            //     fit: FlexFit.tight,
            //     flex: 2,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         GestureDetector(
            //             onTap: () => launchUrl(UrlType.sms, ''),
            //             child: Container(
            //                 child: Text('888 555 5512',
            //                     style: Theme.of(context).textTheme.subtitle2)))
            //       ],
            //     )),
            Flexible(
              fit: FlexFit.tight,
              flex: MediaQuery.of(context).orientation == Orientation.portrait
                  ? 10
                  : 0,
              child: SizedBox(),
            )

            // bc_urls,
            // Flexible(
            //   fit: FlexFit.tight,
            //   flex: 1,
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            //         GestureDetector(
            //             onTap: () => sendEmail(''),
            //             child: Container(
            //                 child: Text(
            //               'keane@gmail.com',
            //               style: Theme.of(context).textTheme.bodyText1,
            //             )))
            //       ]),
            // ),
          ],
        ),
      ),
    );
  }
}
