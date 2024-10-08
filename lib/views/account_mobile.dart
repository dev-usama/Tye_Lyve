import 'package:air_tasker/views/large_screen/sign_up.dart';
import 'package:flutter/material.dart';

class MAccountDropdown extends StatefulWidget {
  const MAccountDropdown({super.key});

  @override
  State<MAccountDropdown> createState() => _MAccountDropdownState();
}

class _MAccountDropdownState extends State<MAccountDropdown> {
  String temp = "";

  @override
  void initState() {
    super.initState();
    temp = "";
  }

  void myfunc(String? selected) {
    if (selected is String) {
      setState(() {
        if (selected == "1") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const WebSignUp()));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.account_circle),
      itemBuilder: (context) => [
        PopupMenuItem(
            child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WebSignUp()),
                  );
                },
                icon: const Icon(Icons.account_circle),
                label: const Text("Become a Freelancer"))),
        const PopupMenuItem(child: Text("Ahmed")),
      ],
    );
  }
}
