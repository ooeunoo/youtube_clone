import 'package:clone_flutter_youtube/src/types/youtube.dart';
import 'package:clone_flutter_youtube/src/utils/number.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetail extends StatelessWidget {
  final Video video;
  final Channel? channel;

  const VideoDetail({Key? key, required this.video, this.channel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _Streaming(video),
      _Description(context, video),
      _User(context, channel),
      _Statistics(),
      _Comments()
    ]);
  }
}

Widget _Streaming(Video video) {
  final String videoId = video.id;
  final YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: videoId,
    flags: const YoutubePlayerFlags(
      mute: false,
      autoPlay: true,
    ),
  );

  return Container(
    height: 250,
    color: Colors.grey.withOpacity(0.5),
    child: YoutubePlayer(
      controller: controller,
      showVideoProgressIndicator: true,
      // videoProgressIndicatorColor: Colors.amber,
      // progressColors: ProgressColors(
      //   playedColor: Colors.amber,
      //   handleColor: Colors.amberAccent,
      // ),
      onReady: () {
        print('Player is ready.');
      },
    ),
  );
}

Widget _Description(
  BuildContext context,
  Video video,
) {
  final videoTitle = video.snippet.title;
  final viewCount = video.statistics.viewCount;
  final publishedAt = video.snippet.publishedAt;

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(videoTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true, // Add this line to enable text wrapping
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(
              height: 10), // Add spacing between title and other details
          Row(
            children: [
              RichText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: Theme.of(context).textTheme.labelMedium,
                  children: [
                    TextSpan(
                        text:
                            "${formatNumberUnit(int.parse(viewCount))} views"),
                    const TextSpan(text: "  "),
                    TextSpan(
                        text: DateFormat('yyyy-MM-dd').format(publishedAt)),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget _User(BuildContext context, Channel? channel) {
  // Channel

  final Thumbnail? channelThumbnail = channel?.snippet.thumbnails.medium;
  final String? channelThumbnailUrl = channelThumbnail?.url;

  final String? channelTitle = channel?.snippet.title;
  final String? channelSubscriber = channel?.statistics.subscriberCount;

  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.withOpacity(0.5),
                backgroundImage: channelThumbnailUrl != null
                    ? NetworkImage(channelThumbnailUrl)
                    : null,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                channelTitle ?? '',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(formatNumberUnit(int.parse(channelSubscriber ?? "0")),
                  style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
          GestureDetector(
            onTap: () {
              // Handle subscribe action here
              // Example: You can show a dialog or perform any other action
              print("Subscribe button tapped");
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white, // Example color
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Subscribe",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ));
}

Widget _Statistics() {
  Widget StaticButton(String title) {
    return GestureDetector(
      onTap: () {
        // Handle the tap event for the first container
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50), // Rounded corners
        ),
        width: 100,
        height: 30, // Increased height for better touch target
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          StaticButton('좋아요'),
          const SizedBox(width: 10), // Add spacing between buttons
          StaticButton('좋아요'),
          const SizedBox(width: 10),
          StaticButton('좋아요'),
          const SizedBox(width: 10),
          StaticButton('좋아요'),
        ],
      ),
    ),
  );
}

Widget _Comments() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Card(
      color: Colors.white,
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(children: [
          Row(
            children: [
              Text("Comments",
                  style: TextStyle(color: Colors.black.withOpacity(0.5))),
              Text("리뷰 갯수",
                  style: TextStyle(color: Colors.black.withOpacity(0.5)))
            ],
          ),
          Row(
            children: [
              const CircleAvatar(),
              Text("진짜 진자 굿",
                  style: TextStyle(color: Colors.black.withOpacity(0.5)))
            ],
          )
        ]),
      ),
    ),
  );
}
