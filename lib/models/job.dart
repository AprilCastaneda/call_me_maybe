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

  String get title => jobTitle;
  String get companyName => coName;
  int get fromYear => fromYr;
  int get toYear => toYr;
  String get location => loc;
  String get description => desc;
}
