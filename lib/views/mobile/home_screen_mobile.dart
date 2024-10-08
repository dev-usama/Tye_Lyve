import 'package:air_tasker/views/carousel_item.dart';
import 'package:air_tasker/views/large_screen/my_card.dart';
import 'package:air_tasker/views/mobile/scrolling_video.dart';
import 'package:air_tasker/views/large_screen/testimonials.dart';
import 'package:air_tasker/views/large_screen/web_auth_dropdown.dart';
import 'package:air_tasker/views/large_screen/web_card.dart';
import 'package:air_tasker/views/mobile/animation_01_mobile.dart';
import 'package:air_tasker/views/mobile/animation_02_mobile.dart';
import 'package:air_tasker/views/mobile/animation_03_mobile.dart';
import 'package:air_tasker/views/mobile/footer_mobile.dart';
import 'package:air_tasker/views/mobile/mobile_testimonials.dart';
import 'package:air_tasker/views/mobile/newsletter_mobile.dart';
import 'package:air_tasker/views/mobile/mobile_authentication.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:air_tasker/views/large_screen/jumbotron.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets\\images\\logo.jpeg",
          fit: BoxFit.cover,
        ),
        toolbarHeight: 50,
        leadingWidth: 100,
        actions: [
          // Post A Task
          const TaskDropdown(),
          const SizedBox(
            width: 20,
          ),

          // Login, Sign up and OAuth dropdown using account icon
          const MobileAuthentication(),

          // Drawer
          Builder(builder: (context) {
            return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context)
                      .openEndDrawer(); // Access a parent widget
                });
          })
        ],
      ),
      endDrawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
            child: Text("Air Tracker"),
          ),
          ListTile(
            onTap: () {},
            leading: const Text("Home"),
          ),
          ListTile(
            onTap: () {},
            leading: const Text("About"),
          ),
          ListTile(
            onTap: () {},
            leading: const Text("Services"),
          ),
          ListTile(
            onTap: () {},
            leading: const Text("Blogs"),
          )
        ],
      )),
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
          const Animation01_mobile(),

          // Animation 02
          const Animation02Mobile(),

          // Jumbotron
          const MyJumbotron(),

          // JOB SEARCH PAYMENT AND PROFESSIONAL NETWORK
          const Column(
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
                    style: TextStyle(fontSize: 10),
                    textAlign: TextAlign.center,
                  )),
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
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)), // Makes the border square
                      ),
                      minimumSize: const Size(120, 50),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "Join",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: OutlinedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        side: const BorderSide(color: Colors.blue),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)), // Makes the border square
                        ),
                        minimumSize: const Size(120, 50),
                        foregroundColor: Colors.blue),
                    child: const Text(
                      "Learn More",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 50,
            width: 50,
          ),

          // Publish ur first task with video
          const MyVideoPlayer(),

          // Discover powerful tools
          const Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Discover Powerful Tools for Clients to Streamline Your Freelance Projects",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
                Text(
                  "\nAs a client, you can easily post jobs that attract top talent. Manage your projects seamlessly with our intuitive dashboard, ensuring every detail is tracked. Plus, enjoy peace of mind with our secure payment system that protects your transactions",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),

          // Post, manage, and secure
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Mycard2(
                  icon: const Icon(
                    Icons.edit,
                    size: 16,
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
                const SizedBox(
                  height: 20,
                ),
                Mycard2(
                    icon: const Icon(
                      Icons.apps,
                      size: 16,
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
                const SizedBox(
                  height: 20,
                ),
                Mycard2(
                    icon: const Icon(
                      Icons.payment,
                      size: 16,
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
              ],
            ),
          ),

          // Testimonials
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "CHECK OUT WHAT OTHERS ARE ACCOMPLISHING",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Testimonials2(),

          // Post your task for free
          Padding(
            padding: const EdgeInsets.all(20),
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
          const Animation03Mobile(),

          // Newsletter
          const MyNewsletter2(),

          // Community
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Join Our Freelance Community Today",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Unlock opportunities for freelancers and clients alike.",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )
                    ],
                  ),
                ),
                SizedBox(
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
          const FooterMobile()
        ],
      ),
    );
  }
}
