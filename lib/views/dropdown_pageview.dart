import 'package:flutter/material.dart';

class DropdownPageview extends StatefulWidget {
  const DropdownPageview({super.key});

  @override
  State<DropdownPageview> createState() => _DropdownPageviewState();
}

class _DropdownPageviewState extends State<DropdownPageview> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        GridView.count(
          crossAxisCount: 3,
          children: [Text("Accountants"), Text("Delivery"), Text("Marketing")],
        )
      ],
    );
  }
}
