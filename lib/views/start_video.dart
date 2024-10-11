import 'package:air_tasker/views/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class StartVideo extends StatefulWidget {
  const StartVideo({super.key});

  @override
  State<StartVideo> createState() => _StartVideoState();
}

class _StartVideoState extends State<StartVideo> {
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
    try {
      _controller = VideoPlayerController.asset("assets/videos/video.mp4")
        ..initialize().then((_) {
          setState(() {
            _isInitialized = true;
            _controller.addListener(() {
              if (_controller.value.position == _controller.value.duration) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResponsiveLayout()));
              }
            });
          });
        });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isInitialized) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _controller.play();
      });
    }
    return Center(
      child: _isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller))
          : const CircularProgressIndicator(),
    );
  }
}
