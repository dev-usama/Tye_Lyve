import 'package:air_tasker/views/web_card.dart';
import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Publish your first task in a matter of seconds",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Save hours and get your tasks done",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                const Text(
                    "1. Explain what you need\n2. Set your budget\n3. Get quotes and choose the best tasker"),
                ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue),
                    child: const Text("Post a task"))
              ],
            ),
          ),
          Row(
            children: [
              const SizedBox(
                height: 300,
                child: ScrollLoopAutoScroll(
                    duration: Duration(seconds: 600),
                    scrollDirection: Axis.vertical,
                    reverseScroll: true,
                    child: SizedBox(child: _Video())),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
                height: 100,
              ),
              const SizedBox(
                height: 300,
                child: ScrollLoopAutoScroll(
                    duration: Duration(seconds: 600),
                    scrollDirection: Axis.vertical,
                    child: SizedBox(child: _Video2())),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Video extends StatefulWidget {
  const _Video({super.key});

  @override
  State<_Video> createState() => __VideoState();
}

class __VideoState extends State<_Video> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://videos.pexels.com/video-files/2795168/2795168-uhd_1440_2560_25fps.mp4'))
      ..initialize().then((_) {
        setState(() {
          _isInitialized = true;
        });
      });
    _controller.initialize();
    _controller.setLooping(true);
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(border: Border.all()),
        height: 300,
        width: MediaQuery.of(context).size.width * 0.2,
        child: _isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const CircularProgressIndicator());
  }
}

class _Video2 extends StatefulWidget {
  const _Video2({super.key});

  @override
  State<_Video2> createState() => __Video2State();
}

class __Video2State extends State<_Video2> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://videos.pexels.com/video-files/2795168/2795168-uhd_1440_2560_25fps.mp4'))
      ..initialize().then((_) {
        setState(() {
          _isInitialized = true;
        });
      });
    _controller.initialize();
    _controller.setLooping(true);
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(border: Border.all()),
        height: 300,
        width: MediaQuery.of(context).size.width * 0.2,
        child: _isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const CircularProgressIndicator());
  }
}
