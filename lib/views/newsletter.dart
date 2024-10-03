import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyNewsletter extends StatefulWidget {
  const MyNewsletter({super.key});

  @override
  State<MyNewsletter> createState() => _MyNewsletterState();
}

class _MyNewsletterState extends State<MyNewsletter> {
  final Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl:
              "https://plus.unsplash.com/premium_photo-1669324357471-e33e71e3f3d8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          fit: BoxFit.cover,
          height: 350,
          colorBlendMode: BlendMode.multiply,
          color: const Color.fromARGB(150, 33, 149, 243),
          width: double.infinity,
        ),
        Container(
          padding: EdgeInsets.all(50),
          height: 350,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Stay Updated with Our Newsletter",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              Text(
                "Join our newsletter for the latest updates, opportunities, and tips tailored for freelancers.",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
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
                          Container(
                            width: 300,
                            height: 50,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  label: Text("You@email.com"),
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
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white),
                            child: Text("Submit"),
                          ),
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}
