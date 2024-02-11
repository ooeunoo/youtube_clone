import 'package:clone_flutter_youtube/src/screens/home/components/header/home_app_bar.dart';
import 'package:clone_flutter_youtube/src/screens/home/components/video/video_detail.dart';
import 'package:clone_flutter_youtube/src/screens/home/components/video/video_summary.dart';
import 'package:clone_flutter_youtube/src/services/youtube_service.dart';
import 'package:clone_flutter_youtube/src/theme/own_theme.dart';
import 'package:clone_flutter_youtube/src/types/youtube.dart';
import 'package:clone_flutter_youtube/src/utils/debouncer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 200);
    final isMounted = useIsMounted();

    final videos = useState<List<Video>>([]);
    final nextPageToken = useState<String?>(null);
    final scrollController = useScrollController();

    void load() async {
      if (isMounted()) {
        final result = await YoutubeService().getVideos(nextPageToken.value);
        if (result != null) {
          nextPageToken.value = result.nextPageToken;

          if (result.items != null) {
            final updatedVideos = List.of(videos.value);
            updatedVideos.addAll(result.items!);
            videos.value = updatedVideos;
          }
        }
      }
    }

    useEffect(() {
      load();

      return () {};
    }, []);

    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent * 0.3) {
          debouncer.run(() => load());
        }
      });
      return null;
    }, [scrollController]);

    void openDetail(Channel? channel, Video video) {
      showModalBottomSheet(
          useSafeArea: true,
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return VideoDetail(channel: channel, video: video);
          });
    }

    return SafeArea(
      child: RawScrollbar(
        controller: scrollController,
        thumbColor: Theme.of(context).own().scrollbarThumbColor,
        thickness: 3,
        radius: const Radius.circular(10),
        interactive: true,
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            const SliverAppBar(
              title: HomeAppBar(),
              floating: true,
              snap: true,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              return HookBuilder(
                builder: (context) {
                  final video = videos.value[index];
                  final channel = useState<Channel?>(null);
                  final isMounted = useIsMounted();

                  void loadChannel() async {
                    final result = await YoutubeService()
                        .getChannel(videos.value[index].snippet.channelId);
                    if (result != null && isMounted()) {
                      channel.value =
                          result.items.isNotEmpty ? result.items[0] : null;
                    }
                  }

                  useEffect(() {
                    loadChannel();
                    return () {};
                  }, []);
                  return GestureDetector(
                    onTap: () {
                      openDetail(channel.value, video);
                    },
                    child: VideoSummary(
                      key: ValueKey<String>(video.id),
                      video: video,
                      channel: channel.value,
                    ),
                  );
                },
              );
            }, childCount: videos.value.length))
          ],
        ),
      ),
    );
  }
}
