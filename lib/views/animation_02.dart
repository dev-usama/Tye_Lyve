import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:air_tasker/views/animation_layout.dart';

class TopFreelancer extends StatelessWidget {
  const TopFreelancer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: MediaQuery.of(context).size.width * 0.4,
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
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Unlock a world of talent at your fingertips. Our platform offers unmatched flexibility to meet your project needs.",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )
            ],
          ),
          const SizedBox(
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
                    Text(
                      "Vast Talent",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Access a diverse pool of skilled freelancers ready to bring your ideas to life.",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
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
                      style: TextStyle(color: Colors.grey, fontSize: 12),
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

class Animation02 extends StatelessWidget {
  const Animation02({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      MyAnimator(
        Begin: const Offset(-1, 0),
        End: const Offset(0, 0),
        animation_child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 450,
          child: CachedNetworkImage(
            imageUrl:
                "https://images.unsplash.com/photo-1713947504039-6ae85038dfd0?q=80&w=2532&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
      const MyAnimator(
        Begin: Offset(1, 0),
        End: Offset(0, 0),
        animation_child: TopFreelancer(),
      )
    ]);
  }
}
