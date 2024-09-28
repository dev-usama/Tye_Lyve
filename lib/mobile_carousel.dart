import 'package:air_tasker/carousel_item_01.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MobileCarousel extends StatelessWidget {
  const MobileCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        MobileCarouselItem("assets\\images\\teamwork.jpg"),
        MobileCarouselItem("assets\\images\\google_logo.jpg")
      ],
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.9,
        viewportFraction: 1,
      ),
    );
  }
}
