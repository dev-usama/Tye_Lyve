import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class Testimonials extends StatefulWidget {
  const Testimonials({super.key});

  @override
  State<Testimonials> createState() => _TestimonialsState();
}

class _TestimonialsState extends State<Testimonials> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
      color: const Color.fromARGB(147, 190, 196, 199),
      child: const Column(
        children: [
          ScrollLoopAutoScroll(
            duration: Duration(seconds: 300),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _Review(
                    path: "assets\\images\\profile_pic.jpg",
                    name: Text("Usama - "),
                    profession: Text(
                      "Full Stack Developer",
                      style: const TextStyle(color: Colors.white),
                    ),
                    rating: 4,
                    description: Text("Secure Payments")),
                SizedBox(height: 20, width: 100),
                _Review(
                    path: "assets\\images\\google_logo.jpg",
                    name: Text(
                      "Rameez Butt - ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    profession: Text(
                      "CEO at RBs Solutions",
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    rating: 5,
                    description: Text("Nice Work"))
              ],
            ),
          ),
          SizedBox(height: 50, width: 50),
          ScrollLoopAutoScroll(
            duration: Duration(seconds: 150),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _Review(
                    path: "assets\\images\\profile_pic.jpg",
                    name: Text("Usama - "),
                    profession: Text(
                      "Full Stack Developer",
                      style: const TextStyle(color: Colors.white),
                    ),
                    rating: 4,
                    description: Text("Secure Payments")),
                SizedBox(height: 20, width: 100),
                _Review(
                    path: "assets\\images\\google_logo.jpg",
                    name: Text(
                      "Rameez Butt - ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    profession: Text(
                      "CEO at RBs Solutions",
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    rating: 5,
                    description: Text("Nice Work"))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Review extends StatelessWidget {
  final String path;
  final Text name;
  final int rating;
  final Text description;
  final Text profession;
  const _Review(
      {required this.path,
      required this.name,
      required this.profession,
      required this.rating,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color.fromARGB(148, 19, 74, 99),
            const Color.fromARGB(150, 194, 222, 244)
          ]),
          borderRadius: BorderRadius.circular(20)),
      width: MediaQuery.of(context).size.width * 0.3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                path,
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
            Row(
              children: [this.name, this.profession],
            ),
            Row(
              children: List.generate(this.rating, (index) {
                return const Icon(
                  Icons.stars,
                  color: Colors.yellow,
                );
              }),
            )
          ]),
          this.description
        ],
      ),
    );
  }
}
