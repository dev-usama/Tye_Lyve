import 'package:air_tasker/views/large_screen/home_screen_web.dart';
import 'package:air_tasker/views/mobile/home_screen_mobile.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return const HomeScreenMobile();
      } else {
        return const HomeScreenWeb();
      }
    });
  }
}
