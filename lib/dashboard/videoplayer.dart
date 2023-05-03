import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class videoplayer extends StatefulWidget {

  const videoplayer({required Key key}) : super(key: key);

  @override
_VideoPlayerState createState() => _VideoPlayerState();
}
class _VideoPlayerState extends State<videoplayer>{

  // late VideoPlayerController _controller;   
  // late Future<void> _video;
  @override 
  

  // void initState(){
  //   super.initState();
  //   _controller = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/buterfly.mp4");
  //   _video = _controller.initialize();

  // }
  Widget build(BuildContext context){
    return Scaffold(
    //  body: FutureBuilder(
    //   future: _video,
    //   builder: (context , snaphot)

    //  {
         
    //      if (snapshot.connectionState == ConnectionState.done)
    //      {
    //       return AspectRatio(
    //         aspectRatio: _controller.value.aspectRatio,
    //         child:VideoPlayer(_controller)
    //          ,
             
    //          );
    //      }
    //      else
    //      {
    //       return Center(
    //         child: CircularProgressIndicator(),
    //       );
    //      }
    //  }
  
    //  ,
    //  ),
    //    floatingActionButton: FloatingActionButton(
    //     onPressed: (){
    //       if(_controller.value.isPlaying)
    //       {
    //         setState(() {
    //           _controller.pause();
    //         });
    //       }
    //       else{
    //         setState(() {
    //           _controller.play();
    //         });
    //       }

    //    },
       
    //    child: Icon(_controller.value.isPlaying? Icons.pause:Icons.play_arrow),
    //    ),
    );
  }

}

