import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MobileCarouselItem extends StatelessWidget {
  const MobileCarouselItem(this.path, {super.key});

  final String path;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CachedNetworkImage(
            imageUrl: path,
            fit: BoxFit.cover,
            color: const Color.fromARGB(255, 157, 146, 146),
            colorBlendMode: BlendMode.modulate),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Connect, Collaborate, Create",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width < 650 ? 22 : 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Your Task Hub",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width < 650 ? 22 : 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Welcome to your go-to platform for freelancers and clients alike. Discover opportunities, showcase your skills, and bring your projects to life today!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width < 650 ? 14 : 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: SearchBar(
                leading: Icon(Icons.menu),
                hintText: "Search for any service",
                trailing: [Icon(Icons.search)],
              ),
            )
          ],
        ),
      ],
    );
  }
}
