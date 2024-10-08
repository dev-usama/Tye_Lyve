import 'package:air_tasker/views/large_screen/home_screen_web.dart';
import 'package:flutter/material.dart';
import 'package:air_tasker/views/mobile/home_screen_mobile.dart';

void main() {
  runApp(LayoutBuilder(builder: (context, constraints) {
    if (constraints.maxWidth < 600) {
      return const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomeScreenMobile());
    } else {
      return const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomeScreenWeb());
    }
  }));
}
