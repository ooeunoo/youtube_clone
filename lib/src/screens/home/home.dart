import 'package:clone_flutter_youtube/src/screens/home/components/header/home_app_bar.dart';
import 'package:clone_flutter_youtube/src/screens/home/components/video/video_summary.dart';
import 'package:clone_flutter_youtube/src/services/youtube_service.dart';
import 'package:clone_flutter_youtube/src/types/youtube.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nextPageToken = useState<String?>(null);
    final videos = useState<List<Video>>([]);

    final scrollController = useScrollController();

    reload() {
      YoutubeService().getVideos(nextPageToken.value).then((result) {
        if (result != null) {
          nextPageToken.value = result.nextPageToken;

          videos.value.addAll(result.items);
        }
      });
    }

    useEffect(() {
      reload();
      return null;
    }, []);

    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          reload();
        }
      });
      return () {};
    }, [scrollController]);

    return SafeArea(
        child: CustomScrollView(
      controller: scrollController,
      slivers: [
        const SliverAppBar(
          title: HomeAppBar(),
          floating: true,
          snap: true,
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed('/video/243434');
            },
            child: VideoSummary(
              key: ValueKey<String>(videos.value[index].id),
              video: videos.value[index],
            ),
          );
        }, childCount: videos.value.length))
      ],
    ));
  }
}
