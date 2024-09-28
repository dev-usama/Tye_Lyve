import 'package:flutter/material.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  static double index = 1;
  @override
  Widget build(BuildContext context) {
    return Slider(
      onChanged: (value) => value++,
      value: index,
    );
  }
}
