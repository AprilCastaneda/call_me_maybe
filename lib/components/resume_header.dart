import 'package:flutter/material.dart';

import '../models/self.dart';

class ResumeHeader extends StatelessWidget {
  final self = Self(
      firstAndLastName: 'Keane',
      curJobTitle: 'The Goodest Boi',
      phoneNum: '888 555 5512',
      email: 'keane@gmail.com');

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Text(self.fullName, style: Theme.of(context).textTheme.headline4)
      ]),
      Row(children: [
        Text(self.currentJobTitle, style: Theme.of(context).textTheme.subtitle1)
      ]),
      Row(children: [
        Text(self.phoneNumber, style: Theme.of(context).textTheme.subtitle2)
      ]),
      Row(children: [
        Text(self.emailAddress, style: Theme.of(context).textTheme.subtitle2)
      ]),
      Row(children: [Text('')]),
    ]);
  }
}
