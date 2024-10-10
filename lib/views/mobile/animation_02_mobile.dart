import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:air_tasker/views/animation_layout.dart';

class TopFreelancer2 extends StatelessWidget {
  const TopFreelancer2({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover the Ultimate Platform for Connecting Clients with Top Freelancers",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Unlock a world of talent at your fingertips. Our platform offers unmatched flexibility to meet your project needs.",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          ),
          SizedBox(
            height: 25,
            width: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vast Talent",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Access a diverse pool of skilled freelancers ready to bring your ideas to life.",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Flexible Projects",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Adapt your project scope and timeline to fit your unique requirements effortlessly.",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Animation02Mobile extends StatelessWidget {
  const Animation02Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const MyAnimator(
          Begin: Offset(1, 0),
          End: Offset(0, 0),
          animation_child: TopFreelancer2(),
        ),
        const SizedBox(
          height: 50,
        ),
        MyAnimator(
          Begin: const Offset(-1, 0),
          End: const Offset(0, 0),
          animation_child: CachedNetworkImage(
            imageUrl:
                "https://images.unsplash.com/photo-1713947504039-6ae85038dfd0?q=80&w=2532&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        )
      ]),
    );
  }
}
