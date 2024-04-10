import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;
  bool _isLoading = true;
  double _currentSliderValue = 0.0;
  bool _showControls = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/videos/basicoperations3.mp4',
    )..initialize().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    _controller.addListener(() {
      setState(() {
        _currentSliderValue =
            _controller.value.position.inSeconds.toDouble();
      });
    });

    // Start a timer to hide controls after 10 seconds
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      setState(() {
        _showControls = false;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer
    _controller.dispose();
    super.dispose();
  }

  void _toggleControls() {
    setState(() {
      _showControls = !_showControls;
    });
    // Reset the timer if controls are visible
    if (_showControls) {
      _timer?.cancel();
      _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
        setState(() {
          _showControls = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Operations'),
      ),
      body: GestureDetector(
        onTap: _toggleControls, // Toggle controls on tap
        child: Stack(
          children: [
            Center(
              child: _isLoading
                  ? const CircularProgressIndicator()
                  : AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
            ),
            if (_showControls) // Show controls if _showControls is true
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Slider(
                  value: _currentSliderValue,
                  min: 0.0,
                  max: _controller.value.duration.inSeconds.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                    _controller.seekTo(Duration(seconds: value.toInt()));
                  },
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
