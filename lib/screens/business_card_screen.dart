import 'package:flutter/material.dart';
import '../components/bc_components.dart';

class BusinessCardScreen extends StatefulWidget {
  State createState() => BusinessCardScreenState();
}

class BusinessCardScreenState extends State<BusinessCardScreen> {
  double paddingHorizontal(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.05;

  double paddingVertical(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.05;

  final bc_components = BCComponents();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: MediaQuery.of(context).orientation == Orientation.portrait
          ? Alignment.topCenter
          : Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal(context),
            vertical: paddingVertical(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bc_components.image,
            bc_components.name,
            bc_components.title,
            bc_components.phone,
            bc_components.urls,
            bc_components.box
          ],
        ),
      ),
    );
  }
}
