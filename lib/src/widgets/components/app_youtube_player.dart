import 'package:flutter/material.dart';
import 'package:landing_page_ecommercefy/src/src_exports.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class AppYoutubePlayer extends StatefulWidget {
  const AppYoutubePlayer({
    super.key,
    required this.initialVideoId,
  });

  final String initialVideoId;

  @override
  State<AppYoutubePlayer> createState() => _AppYoutubePlayerState();
}

class _AppYoutubePlayerState extends State<AppYoutubePlayer> {
  final YoutubePlayerController controller = YoutubePlayerController(
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      showVideoAnnotations: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  void initState() {
    controller.init();
    controller.cueVideoById(videoId: widget.initialVideoId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double playerWidth = MediaQuery.of(context).size.width -
        AppResponsiveness.getBlockStructureHorizontalPaddingAmount(context);
    return SizedBox(
      width: playerWidth,
      child: YoutubePlayer(
        controller: controller,
      ),
    );
  }
}
