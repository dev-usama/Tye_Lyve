import 'package:air_tasker/carousel_item_01.dart';
import 'package:air_tasker/mobile_carousel.dart';
import 'package:air_tasker/web_auth_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tye Lyve",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            ExploreDropdown(),
            const SizedBox(
              width: 20,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "How it works",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const SizedBox(
              width: 20,
            ),
            TaskDropdown(),
            const SizedBox(
              width: 20,
            ),
            WebAuthDropdown(),
            const SizedBox(
              width: 80,
            )
          ],
        ),
        body: CarouselSlider(
          items: [
            MobileCarouselItem("assets\\images\\teamwork_web.jpeg"),
            Image.network(
              "https://images.unsplash.com/photo-1664575197229-3bbebc281874?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.cover,
              width: double.infinity,
            )
          ],
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            viewportFraction: 1,
          ),
        ),
      ),
    );
  }
}
