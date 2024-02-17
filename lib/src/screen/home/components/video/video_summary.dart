import 'package:clone_flutter_youtube/src/model/youtube/channel/channel.dart';
import 'package:clone_flutter_youtube/src/model/youtube/thumbnail/thumbnail.dart';
import 'package:clone_flutter_youtube/src/model/youtube/video/video.dart';
import 'package:clone_flutter_youtube/src/model/youtube/videoSnippet/video_snippet.dart';
import 'package:clone_flutter_youtube/src/model/youtube/videoStatistics/video_statistics.dart';
import 'package:clone_flutter_youtube/src/screen/home/components/video/video_setting.dart';
import 'package:clone_flutter_youtube/src/utils/number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

class VideoSummary extends HookWidget {
  final Video video;
  final Channel? channel;

  const VideoSummary({Key? key, required this.video, this.channel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          _Thumbnail(video),
          const SizedBox(height: 5),
          _SimpleInformation(context, channel, video),
        ],
      ),
    );
  }
}

Widget _Thumbnail(Video video) {
  final Thumbnail thumbnail = video.snippet.thumbnails.medium;
  final String url = thumbnail.url;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        color: Colors.grey.withOpacity(0.5),
        child: Image.network(url, fit: BoxFit.fitWidth),
      ),
    ],
  );
}

Widget _SimpleInformation(BuildContext context, Channel? channel, Video video) {
  // Video
  final VideoSnippet snippet = video.snippet;
  final String title = snippet.title;
  final String channelTitle = snippet.channelTitle;
  final DateTime publishedAt = snippet.publishedAt;
  final VideoStatistics statistics = video.statistics;
  final String viewCount = statistics.viewCount;

  // Channel
  final Thumbnail? channelThumbnail = channel?.snippet.thumbnails.medium;
  final String? channelThumbnailUrl = channelThumbnail?.url;

  void openSettingBottomSheet() {
    showModalBottomSheet(
        useSafeArea: true,
        context: context,
        builder: (BuildContext context) {
          return FractionallySizedBox(
            widthFactor:
                0.95, // Set the width factor to adjust the width of the bottom sheet
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 4.0, // Adjust the height of the handlebar
                  width: 50.0, // Adjust the width of the handlebar
                  margin: EdgeInsets.symmetric(
                      vertical:
                          10.0), // Adjust the vertical margin of the handlebar
                  decoration: BoxDecoration(
                    color: Colors.grey
                        .withOpacity(0.5), // Adjust the color of the handlebar
                    borderRadius: BorderRadius.circular(
                        2.0), // Adjust the border radius of the handlebar
                  ),
                ),
                VideoSetting(),
              ],
            ),
          );
        });
  }

  return Container(
    padding: const EdgeInsets.only(left: 10, bottom: 20),
    child: Row(children: [
      CircleAvatar(
        radius: 15,
        backgroundColor: Colors.grey.withOpacity(0.5),
        backgroundImage: channelThumbnailUrl != null
            ? NetworkImage(channelThumbnailUrl)
            : null,
      ),
      const SizedBox(
        width: 15,
      ),
      Expanded(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium),
                ),
                IconButton(
                    alignment: Alignment.topCenter,
                    onPressed: openSettingBottomSheet,
                    icon: const Icon(Icons.more_vert, size: 18))
              ],
            ),
            Row(
              children: [
                RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.labelMedium,
                    children: [
                      TextSpan(text: channelTitle),
                      const TextSpan(text: " ﹒ "),
                      TextSpan(
                          text:
                              "${formatNumberUnit(int.parse(viewCount))} views"),
                      const TextSpan(text: " ﹒ "),
                      TextSpan(
                          text: DateFormat('yyyy-MM-dd').format(publishedAt)),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )
    ]),
  );
}
