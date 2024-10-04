import 'package:air_tasker/views/home_screen_web.dart';
import 'package:flutter/material.dart';
import 'package:air_tasker/views/home_screen_mobile.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(LayoutBuilder(builder: (context, constraints) {
    if (!kIsWeb && constraints.maxWidth < 600) {
      return const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomeScreenMobile());
    } else {
      return const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomeScreenWeb());
    }
  }));
}
