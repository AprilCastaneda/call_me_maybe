import 'package:call_me_maybe/components/bc_url.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/bc_image.dart';
import '../components/bc_text.dart';
import '../components/bc_url.dart';
import '../components/bc_box.dart';

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
  final bc_urls = BCUrl.Two(
      flexNum: 1,
      text: 'github.com',
      style: 'bodyText1',
      urlType: UrlType.url,
      text2: 'keane@gmail.com',
      style2: 'bodyText1',
      urlType2: UrlType.email);
  final bc_box = BCBox();

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
          children: [bc_image, bc_name, bc_title, bc_phone, bc_urls, bc_box],
        ),
      ),
    );
  }
}
