import 'package:flutter/material.dart';

import 'bc_image.dart';
import 'bc_text.dart';
import 'bc_url.dart';
import 'bc_box.dart';

import '../models/url_type.dart';

class BCComponents {
  final _bcImage =
      BCImage(flexNum: 3, item: Image.asset('assets/images/keane.jpg'));
  final _bcName = BCText(flexNum: 2, text: 'Keane', style: 'headline4');
  final _bcTitle =
      BCText(flexNum: 1, text: 'The Goodest Boi', style: 'subtitle1');
  final _bcPhone = BCUrl(
      flexNum: 2,
      text: '888 555 5512',
      style: 'subtitle2',
      urlType: UrlType.sms);
  final _bcUrls = BCUrl.Two(
      flexNum: 1,
      text: 'github.com',
      style: 'bodyText1',
      urlType: UrlType.url,
      text2: 'keane@gmail.com',
      style2: 'bodyText1',
      urlType2: UrlType.email);
  final _bcBox = BCBox();

  BCImage get image => _bcImage;
  BCText get name => _bcName;
  BCText get title => _bcTitle;
  BCUrl get phone => _bcPhone;
  BCUrl get urls => _bcUrls;
  BCBox get box => _bcBox;
}
