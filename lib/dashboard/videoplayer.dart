<<<<<<< HEAD
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoDemo extends StatefulWidget {
//   const VideoDemo({super.key});
=======
import 'package:flutter/material.dart';
import 'package:playeon/widgets/style.dart';
import 'package:video_player/video_player.dart';

class VideoPlayers extends StatefulWidget {
  String? url;
  VideoPlayers({super.key, this.url});
>>>>>>> 27c3e6db23c64935911d48a3457418633d376b9d

//   final String title = "Video Demo";

<<<<<<< HEAD
//   @override
//   State<VideoDemo> createState() => _VideoDemoState();
// }

// class _VideoDemoState extends State<VideoDemo> {
//   late VideoPlayerController _controller;
//   late Future <void> _initializeVideoPlayerFuture;


//   @override
//   void initState(){
//     _controller = VideoPlayerController.network(
//        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
       
//         _initializeVideoPlayerFuture = _controller.initialize();
=======
  @override
  State<VideoPlayers> createState() => _VideoPlayersState();
}

class _VideoPlayersState extends State<VideoPlayers> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.url!);
>>>>>>> 27c3e6db23c64935911d48a3457418633d376b9d

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setPlaybackSpeed(1);
    // _controller.setLooping(true);
    _controller.setVolume(1.0);

<<<<<<< HEAD
//         // _controller.setLooping(true);
//         _controller.setVolume(1.0);


//         super.initState();

//     );
    
  
//   }
//    @override
//    void dispose(){
//     _controller.dispose();
//     super.dispose();
//    }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//     future: _initializeVideoPlayerFuture,
//     builder: (context , snapshot){
//       if(snapshot.connectionState == ConnectionState.done){
//         return AspectRatio(
//     aspectRatio: _controller.value.aspectRatio,
//     child: VideoPlayer(_controller),

//         );
//       }
//       else {
//         return Center(
//           child: CircularProgressIndicator(),
//         );
//       }
//     },
//       ),
//     floatingActionButton : FloatingActionButton(
//       onPressed: () {
//         setState(() {
//           if(_controller.value.isPlaying){
//             _controller.pause();
//           }
//           else{
//             _controller.play();
        
//           }
//         }
//         );
//       },
//       child: Icon(_controller.value.isPlaying ? Icons.pause: Icons.play_arrow  ),)
      
//     );
//   }
// }
=======
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor1,
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
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
        ));
  }
}
>>>>>>> 27c3e6db23c64935911d48a3457418633d376b9d
