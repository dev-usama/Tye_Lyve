import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyNewsletter2 extends StatefulWidget {
  const MyNewsletter2({super.key});

  @override
  State<MyNewsletter2> createState() => _MyNewsletter2State();
}

class _MyNewsletter2State extends State<MyNewsletter2> {
  final Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl:
              "https://plus.unsplash.com/premium_photo-1669324357471-e33e71e3f3d8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          height: MediaQuery.of(context).size.width * 0.8,
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.multiply,
          color: const Color.fromARGB(150, 33, 149, 243),
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.8,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Stay Updated with Our Newsletter",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Join our newsletter for the latest updates, opportunities, and tips tailored for freelancers.",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            child: TextFormField(
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                              decoration: const InputDecoration(
                                  label: Text(
                                    "You@email.com",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white),
                            child: const Text("Submit"),
                          ),
                        ],
                      )
                    ],
                  )),
              const Text(
                "By clicking Join Now, you agree to our Terms and Conditions.",
                style: TextStyle(color: Colors.white, fontSize: 9),
              )
            ],
          ),
        )
      ],
    );
  }
}
