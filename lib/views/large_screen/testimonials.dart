import 'package:flutter/material.dart';

class Testimonials extends StatefulWidget {
  const Testimonials({super.key});

  @override
  State<Testimonials> createState() => _TestimonialsState();
}

class _TestimonialsState extends State<Testimonials>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    _animationController.forward();
    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _Review(
            path: "assets\\images\\profile_pic.jpg",
            name: Text("Usama Ahmed"),
            profession: Text(
              "Full Stack Developer",
              style: TextStyle(color: Colors.white),
            ),
            rating: 4,
            description: Text("Secure Payments"),
          ),
          _Review(
            path: "assets\\images\\google_logo.jpg",
            name: Text("Rameez Butt"),
            profession: Text(
              "CEO at RBs Solutions",
              style: TextStyle(color: Colors.white),
            ),
            rating: 5,
            description: Text("Secure Payments"),
          )
        ],
      ),
      builder: (context, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(1, 0), end: const Offset(-1, 0))
              .animate(
            CurvedAnimation(
                parent: _animationController, curve: Curves.easeInOut),
          ),
          child: child,
        );
      },
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
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Colors.lightBlue, Color.fromARGB(150, 194, 222, 244)]),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    path,
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                ),
                Row(
                  children: [name, const Text(" - "), profession],
                ),
                Row(
                  children: List.generate(rating, (index) {
                    return const Icon(
                      Icons.stars,
                      color: Colors.yellow,
                    );
                  }),
                )
              ]),
          description
        ],
      ),
    );
  }
}
