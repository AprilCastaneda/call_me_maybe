import 'package:flutter/material.dart';

import '../components/resume_components.dart';

class ResumeScreen extends StatefulWidget {
  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  double paddingHorizontal(BuildContext context) =>
      MediaQuery.of(context).size.width * .05;

  double paddingVertical(BuildContext context) =>
      MediaQuery.of(context).size.height * .05;

  ResumeComponents resumeComponents = ResumeComponents();

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
            child: resumeComponents, //Column(children: jobsBody(context)),
          ),
        ),
      );
    });
  }
}
