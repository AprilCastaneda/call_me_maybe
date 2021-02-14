import 'package:flutter/material.dart';

class BCImage extends StatelessWidget {
  final int flexNum;
  final Widget item;

  const BCImage({Key key, this.flexNum, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flexNum,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [item]),
    );
  }
}
