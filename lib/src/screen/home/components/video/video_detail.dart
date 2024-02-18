import 'package:clone_flutter_youtube/src/component/icon/custom_icon.dart';
import 'package:clone_flutter_youtube/src/constant/asset_path.dart';
import 'package:clone_flutter_youtube/src/model/youtube/channel/channel.dart';
import 'package:clone_flutter_youtube/src/model/youtube/thumbnail/thumbnail.dart';
import 'package:clone_flutter_youtube/src/model/youtube/video/video.dart';
import 'package:clone_flutter_youtube/src/theme/own_theme.dart';
import 'package:clone_flutter_youtube/src/model/asset/asset.dart';
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
      _Statistics(context, video),
      _Comments(context, video)
    ]);
  }
}

Widget _Streaming(Video video) {
  final String videoId = video.id;
  final YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: videoId,
    flags: const YoutubePlayerFlags(
      mute: false,
      autoPlay: false,
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
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
              child: Text(
                "Subscribe",
                style: Theme.of(context).own().accentTitleMedium,
              ),
            ),
          ),
        ],
      ));
}

Widget _Statistics(BuildContext context, Video video) {
  final String videoLike = video.statistics.likeCount;

  Widget StaticButton(Asset iconPath, String title, Function? onTap) {
    return GestureDetector(
      onTap: null,
      child: SizedBox(
        height: 40,
        child: Card(
          color: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
            // side: const BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIcon(iconPath),
                const SizedBox(
                  width: 10,
                ),
                Text(title, style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
          ),
        ),
      ),
    );
  }

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StaticButton(
              AssetPath.like, formatNumberUnit(int.parse(videoLike)), null),
          const SizedBox(width: 3), // Add spacing between buttons
          StaticButton(AssetPath.share, 'Share', null),
          const SizedBox(width: 3),
          StaticButton(AssetPath.flag, 'Report', null),
          const SizedBox(width: 3),
          StaticButton(AssetPath.scissors, 'Clip', null),
          const SizedBox(width: 3),
          StaticButton(AssetPath.save, 'Save', null),
        ],
      ),
    ),
  );
}

Widget _Comments(BuildContext context, Video video) {
  final commentCount = video.statistics.commentCount;
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Card(
      color: Theme.of(context).cardColor,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(children: [
          Row(
            children: [
              Text("Comments", style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(
                width: 10,
              ),
              Text(formatNumberUnit(int.parse(commentCount ?? '0')),
                  style: Theme.of(context).textTheme.labelMedium)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              const SizedBox(
                width: 10,
              ),
              Text("Good Video😊", style: Theme.of(context).textTheme.titleSmall)
            ],
          )
        ]),
      ),
    ),
  );
}
