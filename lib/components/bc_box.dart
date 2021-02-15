import 'package:flutter/material.dart';

class BCBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: MediaQuery.of(context).orientation == Orientation.portrait ? 10 : 0,
      child: SizedBox(),
    );
  }
}
