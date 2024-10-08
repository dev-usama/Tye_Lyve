import 'package:flutter/material.dart';

class Testimonials2 extends StatefulWidget {
  const Testimonials2({super.key});

  @override
  State<Testimonials2> createState() => _Testimonials2State();
}

class _Testimonials2State extends State<Testimonials2>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late final ScrollController _scrollController = ScrollController();

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
  void dispose() {
    super.dispose();
    _animationController.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: ListView(
        padding: const EdgeInsets.only(right: 50),
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        children: const [
          _Review2(
            path: "assets\\images\\profile_pic.jpg",
            name: Text("Usama Ahmed"),
            profession: Text(
              "Full Stack Developer",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            rating: 4,
            description: Text("Secure Payments"),
          ),
          const SizedBox(width: 50, height: 50),
          _Review2(
            path: "assets\\images\\google_logo.jpg",
            name: Text(
              "Rameez Butt",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            profession: Text(
              "CEO at RBs Solutions",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            rating: 5,
            description: Text("Secure Payments"),
          )
        ],
      ),
      builder: (context, child) {
        if (_scrollController.hasClients) {
          _scrollController.jumpTo(_animationController.value *
              _scrollController.position.maxScrollExtent);
        }
        return Container(
          height: 200,
          padding: const EdgeInsets.all(20),
          color: const Color.fromARGB(255, 118, 162, 183),
          child: child,
        );
      },
    );
  }
}

class _Review2 extends StatelessWidget {
  final String path;
  final Text name;
  final int rating;
  final Text description;
  final Text profession;
  const _Review2(
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
          Expanded(
            child: Column(
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
          ),
          description
        ],
      ),
    );
  }
}
