import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer2 extends StatefulWidget {
  const MyVideoPlayer2({super.key});

  @override
  State<MyVideoPlayer2> createState() => _MyVideoPlayer2State();
}

class _MyVideoPlayer2State extends State<MyVideoPlayer2>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 400,
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
          const _ScrollVideo(video: _Video2())
        ],
      ),
    );
  }
}

class _ScrollVideo extends StatefulWidget {
  final _Video2 video;
  const _ScrollVideo({required this.video, super.key});

  @override
  State<_ScrollVideo> createState() => __ScrollVideoState();
}

class __ScrollVideoState extends State<_ScrollVideo>
    with TickerProviderStateMixin {
  late final AnimationController _animationController1;
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();

  @override
  void initState() {
    super.initState();
    _animationController1 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    );

    _animationController1.forward();
    _animationController1.repeat();
  }

  @override
  void dispose() {
    _animationController1.dispose();
    _scrollController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController1,
        builder: (context, child) {
          if (_scrollController1.hasClients) {
            _scrollController1.jumpTo(_animationController1.value *
                _scrollController1.position.maxScrollExtent);
          }
          if (_scrollController2.hasClients) {
            _scrollController2.jumpTo(_animationController1.value *
                _scrollController2.position.maxScrollExtent);
          }
          return SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width * 0.5,
            child: child,
          );
        },
        child: Row(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),
                controller: _scrollController1,
                children: [
                  widget.video,
                  const SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  widget.video,
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),
                controller: _scrollController2,
                children: [
                  const SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  widget.video,
                  const SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  widget.video,
                ],
              ),
            ),
          ],
        ));
  }
}

class _Video2 extends StatefulWidget {
  const _Video2();

  @override
  State<_Video2> createState() => __Video2State();
}

class __Video2State extends State<_Video2> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
        Uri.parse('https://cdn.pixabay.com/video/2024/09/26/233382_tiny.mp4'))
      ..initialize().then((_) {
        setState(() {
          _isInitialized = true;
        });
      });
    _controller.setLooping(true);
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: _isInitialized
          ? VideoPlayer(_controller)
          : const CircularProgressIndicator(),
    );
  }
}
