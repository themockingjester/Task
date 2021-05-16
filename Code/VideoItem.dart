import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
class VideoItem extends StatefulWidget {


  @override
  _VideoItemState createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: AspectRatio(
          aspectRatio: 16 / 9,
          child: BetterPlayer.network(
            "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
            betterPlayerConfiguration: BetterPlayerConfiguration(
              aspectRatio: 16 / 9,
            ),
          ),

      ),
    );
  }
}
