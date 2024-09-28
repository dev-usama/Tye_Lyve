import 'package:air_tasker/home_screen_web.dart';
import 'package:flutter/material.dart';
import 'package:air_tasker/home_screen_mobile.dart';

void main() {
  runApp(LayoutBuilder(builder: (context, constraints) {
    if (constraints.maxWidth < 600) {
      return HomeScreenMobile();
    } else {
      return HomeScreenWeb();
    }
  }));
}
