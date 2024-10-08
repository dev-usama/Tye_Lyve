import 'package:air_tasker/views/large_screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WebAuthDropdown extends StatefulWidget {
  const WebAuthDropdown({super.key});

  @override
  State<WebAuthDropdown> createState() => _WebAuthDropdownState();
}

class _WebAuthDropdownState extends State<WebAuthDropdown> {
  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
        builder: (context, controller, child) => GestureDetector(
              onTap: () {
                controller.open();
              },
              child: Container(
                height: 30,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Become a freelancer",
                        style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        )),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue[700],
                    )
                  ],
                ),
              ),
            ),
        menuChildren: [
          TextButton.icon(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WebSignUp()));
            },
            label: const Text("Become a Freelancer"),
            icon: const Icon(Icons.account_circle_outlined),
          ),
          Center(
              child: ListTile(
            contentPadding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebSignUp(),
                  ));
            },
            leading: const Icon(Icons.person_outline),
            title: const Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          )),
          Center(
              child: ListTile(
            contentPadding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            onTap: () {},
            leading: const Icon(Icons.login),
            title: const Text(
              "Login",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          )),
          const Divider(
            indent: 10,
            endIndent: 10,
            height: 30,
          ),
          Center(
            child: TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                fixedSize: const Size(260, 10),
              ),
              onPressed: () {},
              label: const Text(
                "CONTINUE WITH FACEBOOK",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              icon: const Icon(Icons.facebook),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                fixedSize: const Size(260, 20),
              ),
              onPressed: () {},
              label: const Text("CONTINUE WITH APPLE"),
              icon: const Icon(Icons.apple),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: OutlinedButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
                backgroundColor: Colors.white,
                fixedSize: const Size(260, 20),
              ),
              onPressed: () {},
              label: const Text(
                "CONTINUE WITH GOOGLE",
                style: TextStyle(fontSize: 13),
              ),
              icon: const FaIcon(
                FontAwesomeIcons.google,
                size: 20,
                color: Colors.blueAccent,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ]);
  }
}

// POST A TASK DROPDOWN
class TaskDropdown extends StatelessWidget {
  const TaskDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
        builder: (context, controller, child) => ElevatedButton(
            onPressed: () {
              controller.open();
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            child: const Text(
              "Post a task",
              style: TextStyle(fontSize: 12),
            )),
        menuChildren: [
          TextButton.icon(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WebSignUp()));
            },
            label: const Text("Become a Freelancer"),
            icon: const Icon(Icons.account_circle_outlined),
          ),
          Center(
              child: ListTile(
            contentPadding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebSignUp(),
                  ));
            },
            leading: const Icon(Icons.person_outline),
            title: const Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          )),
          Center(
              child: ListTile(
            contentPadding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            onTap: () {},
            leading: const Icon(Icons.login),
            title: const Text(
              "Login",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          )),
          const Divider(
            indent: 10,
            endIndent: 10,
            height: 30,
          ),
          Center(
            child: TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                fixedSize: const Size(260, 10),
              ),
              onPressed: () {},
              label: const Text(
                "CONTINUE WITH FACEBOOK",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              icon: const Icon(Icons.facebook),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                fixedSize: const Size(260, 20),
              ),
              onPressed: () {},
              label: const Text("CONTINUE WITH APPLE"),
              icon: const Icon(Icons.apple),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: OutlinedButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
                backgroundColor: Colors.white,
                fixedSize: const Size(260, 20),
              ),
              onPressed: () {},
              label: const Text(
                "CONTINUE WITH GOOGLE",
                style: TextStyle(fontSize: 13),
              ),
              icon: const FaIcon(
                FontAwesomeIcons.google,
                size: 20,
                color: Colors.blueAccent,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ]);
  }
}

// Explore menu anchor
class ExploreDropdown extends StatelessWidget {
  const ExploreDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
        builder: (context, controller, child) => GestureDetector(
              onTap: () {
                controller.open();
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
        menuChildren: [
          TextButton.icon(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WebSignUp()));
            },
            label: const Text("Become a Freelancer"),
            icon: const Icon(Icons.account_circle_outlined),
          ),
          Center(
              child: ListTile(
            contentPadding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WebSignUp(),
                  ));
            },
            leading: const Icon(Icons.person_outline),
            title: const Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          )),
          Center(
              child: ListTile(
            contentPadding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            onTap: () {},
            leading: const Icon(Icons.login),
            title: const Text(
              "Login",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          )),
          const Divider(
            indent: 10,
            endIndent: 10,
            height: 30,
          ),
          Center(
            child: TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                fixedSize: const Size(260, 10),
              ),
              onPressed: () {},
              label: const Text(
                "CONTINUE WITH FACEBOOK",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              icon: const Icon(Icons.facebook),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                fixedSize: const Size(260, 20),
              ),
              onPressed: () {},
              label: const Text("CONTINUE WITH APPLE"),
              icon: const Icon(Icons.apple),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: OutlinedButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
                backgroundColor: Colors.white,
                fixedSize: const Size(260, 20),
              ),
              onPressed: () {},
              label: const Text(
                "CONTINUE WITH GOOGLE",
                style: TextStyle(fontSize: 13),
              ),
              icon: Image.asset(
                "assets\\images\\google_logo.jpg",
                width: 20,
                height: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ]);
  }
}
