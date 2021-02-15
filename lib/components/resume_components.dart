import 'package:flutter/material.dart';

import '../models/job.dart';
import '../models/self.dart';

import 'resume_header.dart';
import 'resume_job_list.dart';
import 'resume_job_row.dart';

class ResumeComponents extends StatelessWidget {
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
