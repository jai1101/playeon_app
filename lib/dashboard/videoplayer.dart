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
  double _volumeValue = 0.5;
  bool _isFullScreen = false;
  bool isshowbar = false;
  Duration position = Duration();

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
      _controller.seekTo(position);
    } else {
      _controller.seekTo(position);
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
    position = _controller.value.position + Duration(seconds: 10);

    print(position);
    _controller.seekTo(position);
    setState(() {});
  }

  void _seekBackward() {
    position = _controller.value.position - Duration(seconds: 10);
    _controller.seekTo(position);
    setState(() {});
  }

  void _onSliderChanged(double value) {
    position =
        _controller.value.position + Duration(milliseconds: value.toInt());
    print("My Position $position");

    setState(() {
      _controller.seekTo(position);
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
    // _controller.setVolume(value);
  }

  void _changeVolume(double value) {
    setState(() {
      _volumeValue = value;
      _controller.setVolume(value);
    });
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        isshowbar = !isshowbar;
                      });
                      print(isshowbar);
                    },
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Container(
                        child: VideoPlayer(_controller),
                      ),
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
                    child: isshowbar
                        ? Row(
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
                          )
                        : null,
                  ),
                  Positioned(
                    bottom: 20,
                    // top: 1,
                    child: SizedBox(
                      child: isshowbar
                          ? Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.volume_up,
                                    color: primaryColor1, size: 15),
                                RotatedBox(
                                    quarterTurns: 4,
                                    child: SliderTheme(
                                      data: const SliderThemeData(
                                        overlayShape: RoundSliderOverlayShape(
                                            overlayRadius: 10.0),
                                        tickMarkShape: RoundSliderTickMarkShape(
                                            tickMarkRadius: 2.0),
                                        thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 4.0,
                                        ),
                                      ),
                                      child: Slider(
                                        value: _volumeValue,
                                        min: 0.0,
                                        max: 2.0,
                                        onChanged: _changeVolume,
                                        label: "Volume",
                                      ),
                                    )),
                              ],
                            )
                          : null,
                    ),
                  ),
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
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isshowbar = !isshowbar;
                                    });
                                    print(isshowbar);
                                  },
                                  child: VideoPlayer(_controller)),
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
                                child: SizedBox(
                                  child: isshowbar
                                      ? RotatedBox(
                                          quarterTurns: 3,
                                          child: Slider(
                                            value: _brightnessValue,
                                            min: 0.0,
                                            max: 1.0,
                                            onChanged: _changeBrightness,
                                          ))
                                      : null,
                                ),
                              ),
                              Positioned(
                                right: 1,
                                // top: 1,
                                child: SizedBox(
                                  height: 190,
                                  child: isshowbar
                                      ? Column(
                                          children: [
                                            RotatedBox(
                                                quarterTurns: 3,
                                                child: SliderTheme(
                                                  data: const SliderThemeData(
                                                    overlayShape:
                                                        RoundSliderOverlayShape(
                                                            overlayRadius:
                                                                10.0),
                                                    tickMarkShape:
                                                        RoundSliderTickMarkShape(
                                                            tickMarkRadius:
                                                                2.0),
                                                    thumbShape:
                                                        RoundSliderThumbShape(
                                                      enabledThumbRadius: 4.0,
                                                    ),
                                                  ),
                                                  child: Slider(
                                                    value: _volumeValue,
                                                    min: 0.0,
                                                    max: 2.0,
                                                    onChanged: _changeVolume,
                                                    label: "Volume",
                                                  ),
                                                )),
                                            Icon(Icons.volume_up,
                                                color: primaryColor1, size: 15),
                                          ],
                                        )
                                      : null,
                                ),
                              ),
                              SizedBox(
                                child: isshowbar
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                          // IconButton(
                                          //   onPressed: _stopVideo,
                                          //   icon: Icon(
                                          //     Icons.stop,
                                          //     color: primaryColor1,
                                          //   ),
                                          // ),
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
                                      )
                                    : null,
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
                ],
              ),
            ),
    );
  }
}
