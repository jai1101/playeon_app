import 'package:flutter/material.dart';
import 'package:playeon/widgets/style.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';

class VideoPlayers extends StatefulWidget {
  String? url;

  VideoPlayers({Key? key, this.url}) : super(key: key);

  @override
  _VideoPlayersState createState() => _VideoPlayersState();
}

class _VideoPlayersState extends State<VideoPlayers> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  double _sliderValue = 0.0;
  double _brightnessValue = 0.5;
  bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.url!);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setPlaybackSpeed(1.0);
    _controller.setVolume(1.0);

    _controller.addListener(() {
      setState(() {
        _sliderValue = _controller.value.position.inMilliseconds.toDouble();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _playVideo() {
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
    setState(() {});
  }

  void _stopVideo() {
    _controller.pause();
    _controller.seekTo(Duration.zero);
    setState(() {});
  }

  void _seekForward() {
    final position = _controller.value.position + Duration(seconds: 10);
    _controller.seekTo(position);
    setState(() {});
  }

  void _seekBackward() {
    final position = _controller.value.position - Duration(seconds: 10);
    _controller.seekTo(position);
    setState(() {});
  }

  void _onSliderChanged(double value) {
    final position = Duration(milliseconds: value.toInt());
    _controller.seekTo(position);
    setState(() {
      _sliderValue = value;
    });
  }

  void _changeBrightness(double value) {
    setState(() {
      _brightnessValue = value;
    });
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness:
          _brightnessValue < 0.5 ? Brightness.light : Brightness.dark,
    ));
  }

  void _toggleFullScreen() {
    setState(() {
      _isFullScreen = !_isFullScreen;
    });

    if (_isFullScreen) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _isFullScreen
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                      child: VideoPlayer(_controller),
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: VideoProgressIndicator(
                      _controller,
                      allowScrubbing: true,
                      colors: VideoProgressColors(
                        playedColor: Colors.green,
                        bufferedColor: Colors.grey,
                      ),
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          color: primaryColor1,
                          onPressed: _seekBackward,
                          icon: Icon(Icons.replay_10),
                        ),
                        IconButton(
                          onPressed: _playVideo,
                          icon: Icon(
                            _controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: primaryColor1,
                          ),
                        ),
                        IconButton(
                          onPressed: _stopVideo,
                          icon: Icon(
                            Icons.stop,
                            color: primaryColor1,
                          ),
                        ),
                        IconButton(
                          onPressed: _seekForward,
                          color: primaryColor1,
                          icon: Icon(Icons.forward_10),
                        ),
                        IconButton(
                            color: primaryColor1,
                            onPressed: _toggleFullScreen,
                            icon: Icon(Icons.fullscreen)),
                      ],
                    ),
                  ),
                  // Align(
                  //   alignment: Alignment.topRight,
                  //   child: IconButton(
                  //     onPressed: _toggleFullScreen,
                  //     icon: Icon(Icons.fullscreen),
                  //   ),
                  // ),
                ],
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              VideoPlayer(_controller),
                              // SizedBox(height: 100),
                              VideoProgressIndicator(
                                _controller,
                                allowScrubbing: true,
                                colors: VideoProgressColors(
                                  playedColor: Colors.green,
                                  bufferedColor: Colors.grey,
                                ),
                              ),
                              Positioned(
                                left: 1,
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Slider(
                                    value: _brightnessValue,
                                    min: 0.0,
                                    max: 1.0,
                                    onChanged: _changeBrightness,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    color: primaryColor1,
                                    onPressed: _seekBackward,
                                    icon: Icon(Icons.replay_10),
                                  ),
                                  IconButton(
                                    onPressed: _playVideo,
                                    icon: Icon(
                                      _controller.value.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      color: primaryColor1,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: _stopVideo,
                                    icon: Icon(
                                      Icons.stop,
                                      color: primaryColor1,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: _seekForward,
                                    color: primaryColor1,
                                    icon: Icon(Icons.forward_10),
                                  ),
                                  IconButton(
                                      color: primaryColor1,
                                      onPressed: _toggleFullScreen,
                                      icon: Icon(Icons.fullscreen)),
                                ],
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  // SizedBox(height: 20),
                  // SizedBox(height: 20),
                  // Slider(
                  //   value: _sliderValue,
                  //   min: 0.0,
                  //   max: _controller.value.duration.inMilliseconds.toDouble(),
                  //   onChanged: _onSliderChanged,
                  // ),
                  // SizedBox(height: 20),
                  // SizedBox(height: 20),
                  // ElevatedButton(
                  //   onPressed: _stopVideo,
                  //   child: Text('Stop'),
                  // ),
                  // SizedBox(height: 20),
                ],
              ),
            ),
    );
  }
}
