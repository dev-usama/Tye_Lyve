import 'package:air_tasker/sign_up.dart';
import 'package:flutter/material.dart';

class MobileAuthentication extends StatefulWidget {
  const MobileAuthentication({super.key});

  @override
  State<MobileAuthentication> createState() => _MobileAuthenticationState();
}

class _MobileAuthenticationState extends State<MobileAuthentication> {
  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
        builder: (context, controller, child) => IconButton(
            onPressed: () {
              controller.open();
            },
            icon: const Icon(Icons.account_circle_outlined)),
        menuChildren: [
          TextButton.icon(
            style: TextButton.styleFrom(
              padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
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
            contentPadding: EdgeInsets.fromLTRB(50, 0, 50, 0),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebSignUp(),
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
            contentPadding: EdgeInsets.fromLTRB(50, 0, 50, 0),
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
