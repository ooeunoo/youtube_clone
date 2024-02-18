import 'package:clone_flutter_youtube/src/component/header/app_bar.dart';
import 'package:clone_flutter_youtube/src/mockup/subscription_channel.dart';
import 'package:clone_flutter_youtube/src/model/youtube/channel/channel.dart';
import 'package:clone_flutter_youtube/src/model/youtube/video/video.dart';
import 'package:clone_flutter_youtube/src/screen/home/components/video/video_summary.dart';
import 'package:clone_flutter_youtube/src/service/youtube_service.dart';
import 'package:clone_flutter_youtube/src/theme/own_theme.dart';
import 'package:clone_flutter_youtube/src/utils/debouncer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

List<String> buttonNames = [
  'All',
  'Today',
  'Videos',
  'Shorts',
  'Live Posts',
  'Continue watching',
  'Unwatched',
];

class Subscription extends HookWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final debouncer = Debouncer(milliseconds: 200);
    final isMounted = useIsMounted();

    final videos = useState<List<Video>>([]);
    final nextPageToken = useState<String?>(null);
    final selectedCategoryIndex = useState<int>(1);

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
                  title: MainAppBar(),
                  floating: true,
                  snap: true,
                ),
                // Reduce the horizontal padding applied to the SubscribeChannelIcon
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 8.0,
                      left: 8,
                    ),
                    child: SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: channelList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal:
                                    5), // Adjust horizontal padding here
                            child: SubscribeChannelIcon(
                              context,
                              channelList[index].url,
                              channelList[index].title,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0, left: 8.0, bottom: 10),
                    child: SizedBox(
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: buttonNames.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    5), // Adjust horizontal padding here
                            child: TextButton(
                              onPressed: () {
                                selectedCategoryIndex.value = index;
                              },
                              style: ButtonStyle(
                                backgroundColor: selectedCategoryIndex.value ==
                                        index
                                    ? MaterialStateProperty.all(Colors.white)
                                    : MaterialStateProperty.all(
                                        Theme.of(context).cardColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Adjust border radius here
                                  ),
                                ),
                              ),
                              child: Text(
                                buttonNames[index],
                                style: TextStyle(
                                  color: selectedCategoryIndex.value == index
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
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
                          channel.value = (result.items.isNotEmpty
                              ? result.items[0]
                              : null);
                        }
                      }

                      useEffect(() {
                        loadChannel();
                        return () {};
                      }, []);
                      return GestureDetector(
                        onTap: () {
                          // openDetailBottomSheet(channel.value, video);
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
            )));
  }
}

Widget SubscribeChannelIcon(BuildContext context, String url, String title) {
  return Column(
    children: [
      CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey.withOpacity(0.5),
        backgroundImage: NetworkImage(url),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      )
    ],
  );
}
