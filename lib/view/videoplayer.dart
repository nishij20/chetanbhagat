// ignore_for_file: must_be_immutable

import 'package:dashboard/widgets/commonappbar.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../model/videomodal.dart';

class VideoPlayer extends StatefulWidget {
  VideosModal stories;

  VideoPlayer({required this.stories, super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  var videos;
  late YoutubePlayerController controller;

  @override
  void initState() {
    videos = controller = YoutubePlayerController(
        initialVideoId: widget.stories.videoUrl!,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonAppBar(
          widget: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                YoutubePlayer(
                  controller: controller,
                  liveUIColor: Colors.amber,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.red,
                  width: MediaQuery.sizeOf(context).width,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Video Title : ${widget.stories.title}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Author : Chetan Bhagat",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          text: "Video Player"),
    );
  }
}
