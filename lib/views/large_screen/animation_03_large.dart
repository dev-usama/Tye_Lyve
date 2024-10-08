import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:air_tasker/views/animation_layout.dart';

class Potential extends StatelessWidget {
  const Potential({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Unlock Your Potential with Our Platform",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Our platform connects freelancers and clients seamlessly, fostering collaboration and creativity. Experience a world where talent meets opportunity.",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            height: 50,
            width: 50,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "For Freelancers",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Access diverse projects and build your portfolio with ease.",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          10)), // Makes the border square
                                ),
                                fixedSize: const Size(120, 30),
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                              ),
                              child: const Text("Join")),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "For Clients",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Find skilled professionals tailored to your project needs quickly.",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Expore >",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ))
                        ],
                      ),
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

class Animation03 extends StatelessWidget {
  const Animation03({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      const MyAnimator(
        Begin: Offset(-1, 0),
        End: Offset(0, 0),
        animation_child: Potential(),
      ),
      MyAnimator(
        Begin: const Offset(1, 0),
        End: const Offset(0, 0),
        animation_child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 500,
          child: CachedNetworkImage(
            imageUrl:
                "https://plus.unsplash.com/premium_photo-1669904022334-e40da006a0a3?q=80&w=2669&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      )
    ]);
  }
}
