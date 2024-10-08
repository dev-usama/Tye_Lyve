import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ConnectQF extends StatefulWidget {
  const ConnectQF({super.key});

  @override
  State<ConnectQF> createState() => _ConnectQFState();
}

class _ConnectQFState extends State<ConnectQF>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        child: SizedBox(
          height: 450,
          width: MediaQuery.of(context).size.width * 0.4,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Unlock Your Potential: \nConnect with Quality Clients and Enjoy Flexible Work",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "As a freelancer, you deserve the freedom to choose your projects. Our platform connects you with high-quality clients, ensuring you can thrive in your career.",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 50,
                width: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.people_outline_sharp,
                          color: Colors.lightBlue,
                          size: 32,
                        ),
                        Text(
                          "Quality Clients",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Find clients who value your skills and are ready to pay fairly.",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.work_outline,
                          color: Colors.lightBlue,
                          size: 32,
                        ),
                        Text(
                          "Flexible Work",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Choose when and where you work, creating a balance that suits your lifestyle.",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        builder: (context, child) => SlideTransition(
              position:
                  Tween(begin: const Offset(-1, 0), end: const Offset(0, 0))
                      .animate(CurvedAnimation(
                          parent: _animationController,
                          curve: Curves.easeInOut)),
              child: child,
            ));
  }
}

class Connect2 extends StatefulWidget {
  const Connect2({super.key});

  @override
  State<Connect2> createState() => _Connect2();
}

class _Connect2 extends State<Connect2> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: 450,
            child: CachedNetworkImage(
              imageUrl:
                  "https://images.unsplash.com/photo-1519389950473-47ba0277781c?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )),
        builder: (context, child) => SlideTransition(
              position:
                  Tween(begin: const Offset(1, 0), end: const Offset(0, 0))
                      .animate(CurvedAnimation(
                          parent: _animationController,
                          curve: Curves.easeInOut)),
              child: child,
            ));
  }
}

class Animation01 extends StatelessWidget {
  const Animation01({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [ConnectQF(), Connect2()],
      ),
    );
  }
}
