import 'package:air_tasker/mobile_authentication.dart';
import 'package:air_tasker/mobile_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shape: Border.all(color: Colors.grey),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                textStyle: const TextStyle(
                  fontSize: 10,
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Post a task",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const MobileAuthentication(),
            Builder(builder: (context) {
              return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context)
                        .openEndDrawer(); // Access a parent widget
                  });
            }),
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
            MobileCarousel(),
          ],
        ),
      ),
    );
  }
}
