import 'package:flutter/material.dart';

import 'resume_header.dart';
import 'resume_job_list.dart';
import 'resume_job_row.dart';

class ResumeComponents extends StatefulWidget {
  @override
  _ResumeComponentsState createState() => _ResumeComponentsState();
}

class _ResumeComponentsState extends State<ResumeComponents> {
  final header = ResumeHeader();

  ResumeJobList jobList = ResumeJobList();

  List<Widget> resumeBody() {
    List<Widget> resumeBody = [];
    Widget jobRow;

    resumeBody.add(header);

    for (int i = 0; i < jobList.size; i++) {
      jobRow = ResumeJobRow(job: jobList.jobs[i]);
      resumeBody.add(jobRow);
    }

    return resumeBody;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: resumeBody());
  }
}
