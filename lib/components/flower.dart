import 'dart:math';
import '../models/die.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Flower extends StatefulWidget {
  _FlowerState createState() => _FlowerState();
}

class _FlowerState extends State<Flower> {
  final die = Die(numberOfSides: 20);

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${die.currentValue}',
          style: Theme.of(context).textTheme.display4,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () => launch('https://flutter.dev'),
            // onTap: () {
            //   setState(() {
            //     die.roll();
            //   });
            // },
            child: Image.asset(
              'assets/images/flower.png',
            ),
          ),
        ),
      ],
    );
  }
}

// class Flower extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return FractionallySizedBox(
//       widthFactor: 0.8,
//       heightFactor: 0.8,
//       child: Padding(
//           padding: EdgeInsets.all(padding(context)),
//           child: GestureDetector(
//             onTap: () {
//               displaySnackBar(context);
//             },
//             child: Image.asset(
//               'assets/images/flower.png',
//             ),
//           )),
//     );
//   }
// }

// void displaySnackBar(BuildContext context) {
//   final snackBar = SnackBar(content: Text('Flower Power!!'));
//   Scaffold.of(context).showSnackBar(snackBar);
// }

// double padding(BuildContext context) {
//   if (MediaQuery.of(context).orientation == Orientation.landscape) {
//     return MediaQuery.of(context).size.width * 0.1;
//   } else {
//     return MediaQuery.of(context).size.width * 0.3;
//   }
// }
