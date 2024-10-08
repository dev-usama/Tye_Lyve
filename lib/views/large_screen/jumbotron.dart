import 'package:flutter/material.dart';

class MyJumbotron extends StatelessWidget {
  const MyJumbotron({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Empower',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Unlock Your Freelancing Potential Today!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: width < 600 ? 24 : 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: width < 600 ? width * 0.8 : width * 0.4,
            child: const Text(
              'Create a standout profile that showcases your skills and experience Early search for jobs that match your expertise and interests',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
