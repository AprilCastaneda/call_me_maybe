import 'dart:core';

class Job {
  String jobTitle;
  String coName;
  int fromYr;
  int toYr;
  String loc;
  String desc;

  Job(
      {this.jobTitle,
      this.coName,
      this.fromYr,
      this.toYr,
      this.loc,
      this.desc});

  Job.genericJob() {
    jobTitle = 'Job title here';
    coName = 'Company name here';
    fromYr = 2020;
    toYr = 2121;
    loc = 'Job Location here';
    desc = 'Job Description here';
  }
}
