import '../models/self.dart';
import '../models/job.dart';

import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  double paddingHorizontal(BuildContext context) =>
      MediaQuery.of(context).size.width * .05;

  double paddingVertical(BuildContext context) =>
      MediaQuery.of(context).size.height * .05;

  var jobs = [
    Job(
        jobTitle: 'The Master',
        coName: 'The House',
        fromYr: 2021,
        toYr: 2021,
        loc: 'Las Vegas, NV',
        desc:
            'Supervises house slaves wake up at dawn and follow all orders throughout the day.'),
  ];

  var self = Self(
      firstAndLastName: 'Keane',
      curJobTitle: 'The Goodest Boi',
      phoneNum: '888 555 5512',
      email: 'keane@gmail.com');

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: viewportConstraints.maxWidth,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal(context),
                vertical: paddingVertical(context)),
            child: Column(children: jobsBody(context)),
          ),
        ),
      );
    });
  }

  Widget headerRow(BuildContext context) {
    return Column(children: [
      Row(children: [
        Text('${self.fullName}', style: Theme.of(context).textTheme.headline5)
      ]),
      Row(children: [
        Text('${self.currentJobTitle}',
            style: Theme.of(context).textTheme.subtitle1)
      ]),
      Row(children: [
        Text('${self.phoneNumber}',
            style: Theme.of(context).textTheme.subtitle2)
      ]),
      Row(children: [
        Text('${self.emailAddress}',
            style: Theme.of(context).textTheme.subtitle2)
      ]),
      Row(children: [Text('')]),
    ]);
  }

  Widget jobRow(BuildContext context, int idx) {
    return Column(
      children: [
        Row(children: [
          Text('${jobs[idx].jobTitle}',
              style: Theme.of(context).textTheme.headline6)
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('${jobs[idx].coName}',
              style: Theme.of(context).textTheme.bodyText2),
          Text('${jobs[idx].fromYr} - ${jobs[idx].toYr}',
              style: Theme.of(context).textTheme.bodyText2),
          Text('${jobs[idx].loc}', style: Theme.of(context).textTheme.bodyText2)
        ]),
        Row(children: [
          Expanded(
            child: Text('${jobs[idx].desc}',
                style: Theme.of(context).textTheme.bodyText1),
          )
        ]),
        Row(children: [Text('')]),
      ],
    );
  }

  List<Widget> jobsBody(BuildContext context) {
    List<Widget> jobList = [];

    jobList.add(headerRow(context));

    for (int i = 0; i < jobs.length; i++) {
      jobList.add(jobRow(context, i));
    }

    return jobList;
  }
}
