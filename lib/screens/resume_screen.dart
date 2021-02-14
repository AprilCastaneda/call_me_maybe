import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  double paddingHorizontal(BuildContext context) =>
      MediaQuery.of(context).size.width * .05;

  double paddingVertical(BuildContext context) =>
      MediaQuery.of(context).size.height * .05;

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
            child: Column(children: [headerRow(context), jobRow(context)]),
          ),
        ),
      );
    });
  }

  Widget headerRow(BuildContext context) {
    return Column(children: [
      Row(children: [
        Text('Keane', style: Theme.of(context).textTheme.headline5)
      ]),
      Row(children: [
        Text('The Goodest Boi', style: Theme.of(context).textTheme.subtitle1)
      ]),
      Row(children: [
        Text('888 555 5512', style: Theme.of(context).textTheme.subtitle2)
      ]),
      Row(children: [
        Text('keane@gmail.com', style: Theme.of(context).textTheme.subtitle2)
      ]),
      Row(children: [Text('')]),
    ]);
  }

  Widget jobRow(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text('Job Title', style: Theme.of(context).textTheme.headline6)
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Company Name', style: Theme.of(context).textTheme.bodyText2),
          Text('Dates', style: Theme.of(context).textTheme.bodyText2),
          Text('Location', style: Theme.of(context).textTheme.bodyText2)
        ]),
        Row(children: [
          Text('Job Description', style: Theme.of(context).textTheme.bodyText1)
        ]),
      ],
    );
  }
}
