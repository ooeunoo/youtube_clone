import 'package:cached_network_image/cached_network_image.dart';
import 'package:clone_flutter_youtube/src/services/youtube_service.dart';
import 'package:clone_flutter_youtube/src/types/youtube.dart';
import 'package:clone_flutter_youtube/src/utils/number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

class VideoSummary extends HookWidget {
  final Video video;

  const VideoSummary({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final channel = useState<Channel?>(null);

    load() {
      YoutubeService().getChannel(video.snippet.channelId).then((result) {
        if (result != null) {
          channel.value = result.items[0];
        }
      });
    }

    useEffect(() {
      load();
      return null;
    }, []);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(children: [
        _Thumbnail(video),
        const SizedBox(
          height: 5,
        ),
        _SimpleInformation(context, channel.value, video)
      ]),
    );
  }
}

Widget _Thumbnail(Video video) {
  final Thumbnail thumbnail = video.snippet.thumbnails.medium;
  final String url = thumbnail.url;
  final double width = thumbnail.width.toDouble();
  final double height = thumbnail.height.toDouble();

  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        // width: width,
        // height: height,
        color: Colors.grey.withOpacity(0.5),
        child: CachedNetworkImage(imageUrl: url, fit: BoxFit.fitWidth),
      ),
    ],
  );
}

Widget _SimpleInformation(BuildContext context, Channel? channel, Video video) {
  // Video
  final VideoSnippet snippet = video.snippet;
  final String title = snippet.title;
  final String description = snippet.description;
  final String channelTitle = snippet.channelTitle;
  final DateTime publishTime = snippet.publishedAt;
  final VideoStatistics statistics = video.statistics;
  final String viewCount = statistics.viewCount;

  // Channel
  final Thumbnail? channelThumbnail = channel?.snippet.thumbnails.medium;
  final String? channelThumbnailUrl = channelThumbnail?.url;

  return Container(
    padding: const EdgeInsets.only(left: 10, bottom: 20),
    child: Row(children: [
      CircleAvatar(
        radius: 20,
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
                    onPressed: () {},
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
                          text: DateFormat('yyyy-MM-dd').format(publishTime)),
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
