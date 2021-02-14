import 'dart:core';

class Self {
  String firstAndLastName;
  String curJobTitle;
  String phoneNum;
  String email;

  Self({this.firstAndLastName, this.curJobTitle, this.phoneNum, this.email});

  String get fullName => firstAndLastName;
  String get currentJobTitle => curJobTitle;
  String get phoneNumber => phoneNum;
  String get emailAddress => email;
}
