import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoDemo extends StatefulWidget {
  const VideoDemo({super.key});

  final String title = "Video Demo";

  @override
  State<VideoDemo> createState() => _VideoDemoState();
}

class _VideoDemoState extends State<VideoDemo> {
  late VideoPlayerController _controller;
  late Future <void> _initializeVideoPlayerFuture;


  @override
  void initState(){
    _controller = VideoPlayerController.network(
       "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
       
        _initializeVideoPlayerFuture = _controller.initialize();

       

        // _controller.setLooping(true);
        _controller.setVolume(1.0);


        super.initState();

    );
    
  
  }
   @override
   void dispose(){
    _controller.dispose();
    super.dispose();
   }
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
    future: _initializeVideoPlayerFuture,
    builder: (context , snapshot){
      if(snapshot.connectionState == ConnectionState.done){
        return AspectRatio(
    aspectRatio: _controller.value.aspectRatio,
    child: VideoPlayer(_controller),

        );
      }
      else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
      ),
    floatingActionButton : FloatingActionButton(
      onPressed: () {
        setState(() {
          if(_controller.value.isPlaying){
            _controller.pause();
          }
          else{
            _controller.play();
        
          }
        }
        );
      },
      child: Icon(_controller.value.isPlaying ? Icons.pause: Icons.play_arrow  ),)
      
    );
  }
}