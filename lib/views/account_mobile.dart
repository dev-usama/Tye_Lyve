import 'package:air_tasker/views/sign_up.dart';
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
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WebSignUp()));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.account_circle),
      itemBuilder: (context) => [
        PopupMenuItem(
            child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebSignUp()),
                  );
                },
                icon: Icon(Icons.account_circle),
                label: Text("Become a Freelancer"))),
        PopupMenuItem(child: Text("Ahmed")),
      ],
    );
  }
}
