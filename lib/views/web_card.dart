import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard(
      {required this.icon,
      required this.heading,
      required this.descrition,
      super.key});
  final Text heading;
  final Icon icon;
  final Text descrition;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [icon, heading, descrition],
    );
  }
}
