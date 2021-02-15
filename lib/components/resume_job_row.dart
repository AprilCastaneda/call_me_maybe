import 'package:flutter/material.dart';

import '../models/job.dart';

class ResumeJobRow extends StatelessWidget {
  final Job job;

  const ResumeJobRow({Key key, this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text(job.title, style: Theme.of(context).textTheme.headline6)
        ]),
        Row(children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(job.companyName,
                  style: Theme.of(context).textTheme.bodyText2),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Align(
              alignment: Alignment.center,
              child: Text('${job.fromYear} - ${job.toYear}',
                  style: Theme.of(context).textTheme.bodyText2),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(job.location,
                  style: Theme.of(context).textTheme.bodyText2),
            ),
          )
        ]),
        Row(children: [
          Expanded(
            child: Text(job.description,
                style: Theme.of(context).textTheme.bodyText1),
          )
        ]),
        Row(children: [Text('')]),
      ],
    );
  }
}
