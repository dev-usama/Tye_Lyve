import 'package:flutter/material.dart';

class Mycard2 extends StatelessWidget {
  final Widget icon;
  final Widget heading;
  final Widget button;
  final Widget descrition;
  const Mycard2(
      {required this.icon,
      required this.heading,
      required this.descrition,
      required this.button,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        heading,
        descrition,
        button,
      ],
    );
  }
}
