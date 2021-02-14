import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  // final String title;

  // const BusinessCardScreen({Key key, this.title}) : super(key: key);

  double paddingHorizontal(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.05;
  }

  double paddingVertical(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.05;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: 4 / 5,
          heightFactor: 3 / 5,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal(context),
                vertical: paddingVertical(context)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  flex: 4,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset('assets/images/keane.jpg')]),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Keane',
                          style: DefaultTextStyle.of(context)
                              .style
                              .apply(fontSizeFactor: 1.5, fontWeightDelta: 2),
                        )
                      ]),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('The Best Kitty')]),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('555 555 5555')]),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text('website 1'), Text('website deux')]),
                ),
              ],
            ),
          ),
        ));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     child: Text('Business Card'),
  //   );
  // }
}
