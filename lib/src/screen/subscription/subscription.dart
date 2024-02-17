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

    final List<bool> isPressed =
        List.generate(buttonNames.length, (index) => false);

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
                  child: SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: channelList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 5), // Adjust horizontal padding here
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
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: buttonNames.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 5), // Adjust horizontal padding here
                          child: TextButton(
                            onPressed: () {
                              // Toggle the pressed state of the button
                              isPressed[index] = !isPressed[index];
                            },
                            style: ButtonStyle(
                              backgroundColor: isPressed[index]
                                  ? MaterialStateProperty.all(Colors.white)
                                  : null,
                            ),
                            child: Text(
                              buttonNames[index],
                              style: TextStyle(
                                color: isPressed[index]
                                    ? Colors.black
                                    : Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        );
                      },
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
