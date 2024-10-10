import 'package:air_tasker/views/large_screen/animation_02_large.dart';
import 'package:air_tasker/views/large_screen/animation_03_large.dart';
import 'package:air_tasker/views/carousel_item.dart';
import 'package:air_tasker/views/large_screen/my_card.dart';
import 'package:air_tasker/views/large_screen/newsletter.dart';
import 'package:air_tasker/views/large_screen/scrolling_video_web.dart';
import 'package:air_tasker/views/sign_up.dart';
import 'package:air_tasker/views/large_screen/testimonials.dart';
import 'package:air_tasker/views/large_screen/web_auth_dropdown.dart';
import 'package:air_tasker/views/large_screen/web_card.dart';
import 'package:air_tasker/views/large_screen/web_footer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:air_tasker/views/large_screen/jumbotron.dart';
import 'package:air_tasker/views/large_screen/animation_01_large.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WebSignUp()));
            },
            child: CachedNetworkImage(
              imageUrl: "assets\\images\\logo.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        leadingWidth: 150,
        toolbarHeight: 50,
        actions: [
          const ExploreDropdown(),
          const SizedBox(
            width: 20,
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "How it works",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )),
          const SizedBox(
            width: 20,
          ),
          const TaskDropdown(),
          const SizedBox(
            width: 20,
          ),
          const WebAuthDropdown(),
          const SizedBox(
            width: 80,
          )
        ],
      ),
      body: ListView(
        children: [
          // Slider
          CarouselSlider(
            items: [
              const MobileCarouselItem(
                  "https://images.unsplash.com/photo-1543269865-cbf427effbad?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              CachedNetworkImage(
                imageUrl:
                    "https://images.unsplash.com/photo-1664575197229-3bbebc281874?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                fit: BoxFit.cover,
                width: double.infinity,
              )
            ],
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.9,
              viewportFraction: 1,
            ),
          ),

          // Animation 01
          const Animation01(),

          // Animation 02
          const Animation02(),

          // Jumbotron
          const MyJumbotron(),

          // JOB SEARCH PAYMENT AND PROFESSIONAL NETWORK
          const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyCard(
                  icon: Icon(
                    Icons.work,
                    color: Colors.blue,
                    size: 48,
                  ),
                  heading: Text("Seamless Job Search Experience",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  descrition: Text(
                    "Find your next project with just a few clicks",
                    style: TextStyle(fontSize: 10),
                  )),
              MyCard(
                  icon: Icon(
                    Icons.attach_money_outlined,
                    color: Colors.blue,
                    size: 48,
                  ),
                  heading: Text(
                    "Secure Payment Protection",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  descrition: Text(
                    "Rest easy knowing your payments are secure",
                    style: TextStyle(fontSize: 10),
                  )),
              MyCard(
                  icon: Icon(
                    Icons.link,
                    color: Colors.blue,
                    size: 48,
                  ),
                  heading: Text("Build Your Professional Network",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  descrition: Text(
                    "Connect with clients and other freelancers to grow your opportunities",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 50,
            width: 50,
          ),

          // Join and Learn more buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)), // Makes the border square
                      ),
                      minimumSize: const Size(200, 50),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "Join",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: OutlinedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)), // Makes the border square
                        ),
                        overlayColor: Colors.blue,
                        minimumSize: const Size(200, 50),
                        foregroundColor: Colors.blue),
                    child: const Text(
                      "Learn More",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),

          // Publish ur first task with video
          const MyVideoPlayer2(),

          // Discover powerful tools
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 150,
                  child: const Text(
                    "Discover Powerful Tools for Clients to Streamline Your Freelance Projects",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 150,
                  child: const Text(
                    "\nAs a client, you can easily post jobs that attract top talent. Manage your projects seamlessly with our intuitive dashboard, ensuring every detail is tracked. Plus, enjoy peace of mind with our secure payment system that protects your transactions",
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),

          // Post, manage, and secure
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                height: 200,
                child: Mycard2(
                  icon: const Icon(
                    Icons.edit,
                    size: 32,
                    color: Colors.blue,
                  ),
                  heading: const Text(
                    "Effortlessly Post Jobs and Find the Right Freelancers for Your Needs",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  descrition: const Text(
                    "Our platform simplifies job postings, connecting you with skilled freelancers quickly.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  button: InkWell(
                      onTap: () {},
                      child: const Text(
                        "Post >",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                height: 200,
                child: Mycard2(
                    icon: const Icon(
                      Icons.apps,
                      size: 32,
                      color: Colors.blue,
                    ),
                    heading: const Text(
                      "Manage Your Projects Efficiently with Our User Friendly Interface",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    descrition: const Text(
                      "Keep track of your projects and deadlines all in one place.",
                      style: TextStyle(color: Colors.grey),
                    ),
                    button: InkWell(
                        onTap: () {},
                        child: const Text(
                          "Manage >",
                          style: TextStyle(color: Colors.black),
                        ))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                height: 200,
                child: Mycard2(
                    icon: const Icon(
                      Icons.payment,
                      size: 32,
                      color: Colors.blue,
                    ),
                    heading: const Text(
                      "Experience Secure Payments That Protect Your Financial Transactions",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    descrition: const Text(
                      "Our secure payment system ensures your transactions are safe and reliable.",
                      style: TextStyle(color: Colors.grey),
                    ),
                    button: InkWell(
                        onTap: () {},
                        child: const Text(
                          "Pay >",
                          style: TextStyle(color: Colors.black),
                        ))),
              )
            ],
          ),

          // Testimonials
          const Padding(
            padding: EdgeInsets.all(50.0),
            child: Center(
              child: Text(
                "CHECK OUT WHAT OTHERS ARE ACCOMPLISHING",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: MediaQuery.of(context).size.width < 600
                ? const EdgeInsets.all(20)
                : const EdgeInsets.all(50),
            color: Colors.grey,
            child: const Testimonials(),
          ),

          // Post your task for free
          Padding(
            padding: const EdgeInsets.all(50),
            child: Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  child: const Text("Post your task for free")),
            ),
          ),

          // Animation 3
          const Animation03(),

          // Newsletter
          const MyNewsletter(),

          // Community
          Padding(
            padding: const EdgeInsets.all(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Join Our Freelance Community Today",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Unlock opportunities for freelancers and clients alike.",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10)), // Makes the border square
                              ),
                              minimumSize: const Size(150, 50),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue),
                          child: const Text("Sign Up")),
                      OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    10)), // Makes the border square
                              ),
                              minimumSize: const Size(150, 50),
                              side: const BorderSide(color: Colors.blue),
                              foregroundColor: Colors.blue),
                          child: const Text("Explore >"))
                    ],
                  ),
                )
              ],
            ),
          ),

          // Footer
          const WebFooter()
        ],
      ),
    );
  }
}
