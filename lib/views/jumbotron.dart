import 'package:flutter/material.dart';

class MyJumbotron extends StatelessWidget {
  const MyJumbotron({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Empower',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Unlock Your Freelancing Potential Today!',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Create a standout profile that showcases your skills and experience',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Text(
            'Early search for jobs that match your expertise and interests',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
