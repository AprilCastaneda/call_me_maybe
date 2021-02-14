import '../models/self.dart';
import '../models/job.dart';

import 'package:flutter/material.dart';

class ResumeScreen extends StatefulWidget {
  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  double paddingHorizontal(BuildContext context) =>
      MediaQuery.of(context).size.width * .05;

  double paddingVertical(BuildContext context) =>
      MediaQuery.of(context).size.height * .05;

  var jobs = [
    Job(
        jobTitle: 'The Master',
        coName: 'The House',
        fromYr: 2019,
        toYr: 2021,
        loc: 'Las Vegas, NV',
        desc:
            'Supervises house slaves to wake up at dawn and follow all orders throughout the day.'),
    Job(
        jobTitle: 'Playboy',
        coName: 'MV Hood',
        fromYr: 2016,
        toYr: 2019,
        loc: 'Mar Vista, CA',
        desc:
            'Wandered around the neighborhood, got to know all the neighbors, demanded pets and treats, and surprised my slave.'),
    Job(
        jobTitle: 'Mouse Assassin',
        coName: 'Apartment cellar',
        fromYr: 2016,
        toYr: 2018,
        loc: 'Mar Vista, CA',
        desc:
            'Terrorized the local mice and played with them until death. Also, brought home some half dead mice as gifts to my slave.'),
    Job(
        jobTitle: 'Bird Assassin',
        coName: 'Apartment trees',
        fromYr: 2014,
        toYr: 2016,
        loc: 'Glendale, CA',
        desc:
            'Stalked birds whether they be large and small. Taunted ravens especially and did not care if they dive bombed or yelled all day.'),
    Job(
        jobTitle: 'Territory Guard',
        coName: 'LF Hood',
        fromYr: 2012,
        toYr: 2014,
        loc: 'Los Feliz, CA',
        desc:
            'Kept the neighborhood cats in check. Made sure they knew who was boss, especially at nighttime by yowling loudly and swiping at anyone who stood in my way.'),
    Job(
        jobTitle: 'Vagabond',
        coName: 'LV Hood',
        fromYr: 2011,
        toYr: 2012,
        loc: 'Las Vegas, NV',
        desc:
            'Decided to run away for a month and explored the neighborhood. Got to know the neighborhood kids, hung out at the park, was almost adopted by another slave, then asked new slave to finally take me back.'),
    Job(
        jobTitle: 'Beginner Playboy',
        coName: 'Backyard',
        fromYr: 2009,
        toYr: 2011,
        loc: 'W Adams, CA',
        desc:
            'Trained on being a playboy by getting to know the neighborhood cats.'),
    Job(
        jobTitle: 'Feet Warmer',
        coName: 'Bedroom',
        fromYr: 2008,
        toYr: 2009,
        loc: 'W Adams, CA',
        desc:
            'Realized that feet were the optimal place to sleep. Slept almost every night by my slaves\' feet.'),
    Job(
        jobTitle: 'Washing Machine Inspector',
        coName: 'Laundry Room',
        fromYr: 2007,
        toYr: 2008,
        loc: 'W Adams, CA',
        desc:
            'Did not stray frin the back of the washing machine for a long time. It needed daily inspections.'),
    Job(
        jobTitle: 'Yeller',
        coName: 'Everywhere',
        fromYr: 2007,
        toYr: 2006,
        loc: 'Burbank, CA',
        desc:
            'Made sure everyone knew when I was arriving, walking, being carried, woke up, was hungry, wanted to go out, wanted to sleep. Made it so they could\'nt get a word in edgewise.'),
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
        Text('${self.fullName}', style: Theme.of(context).textTheme.headline4)
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
        Row(children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Text('${jobs[idx].coName}',
                style: Theme.of(context).textTheme.bodyText2),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Text('${jobs[idx].fromYr} - ${jobs[idx].toYr}',
                style: Theme.of(context).textTheme.bodyText2),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Text('${jobs[idx].loc}',
                style: Theme.of(context).textTheme.bodyText2),
          )
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
