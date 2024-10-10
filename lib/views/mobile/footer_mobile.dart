import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      width: double.infinity,
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    child: Image.asset("assets/images/logo.jpeg",
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  "Our platform connects freelancers and clients seamlessly, fostering collaboration and creativity. Experience a world where talent meets opportunity. Unlock a world of talent at your fingertips. Our platform offers unmatched flexibility to meet your project needs. As a freelancer, you deserve the freedom to choose your projects",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: const Text(
                  "Discover",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "How it works",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "For business",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Earn money",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Side Hustle Calculator",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Search jobs",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Cost Guides",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Service Guides",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Comparison Guides",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Student Discount",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "New users FAQ",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ))
              ]),
              const Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: const Text(
                  "Company",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "About us",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Careers",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Media enquiries",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Community Guidelines",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Tasker Principles",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Terms and Conditions",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Blogs",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Contact us",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Privacy policy",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Post a task",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ))
              ]),
              const Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: const Text(
                  "Existing Members",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Browse tasks",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Support centre",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ))
                ],
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: const Text(
                  "Popular Categories",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Handyman Services",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Cleaning Services",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Delivery Services",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Removalists",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Gardening Services",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Auto Electricians",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Assembly Services",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "All Services",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Privacy Policy",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Terms of Service",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Cookies Settings",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              ElevatedButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(5), // Set the corner radius
                      ),
                      iconColor: Colors.blue,
                      foregroundColor: Colors.blue),
                  icon: const FaIcon(FontAwesomeIcons.googlePlay),
                  label: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "GET IT ON",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "Google Play",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              const SizedBox(
                width: 10,
                height: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(5), // Set the corner radius
                      ),
                      iconColor: Colors.blue,
                      foregroundColor: Colors.blue),
                  icon: const Icon(
                    Icons.apple,
                    size: 28,
                  ),
                  label: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Download on the",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "App Store",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              // Social Media Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      )),
                  IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 24,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                  IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.youtube,
                        color: Colors.white,
                      ))
                ],
              ),
              const Text(
                "© 2024 Company. All Rights Reserved.",
                style: TextStyle(color: Colors.white, fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}
