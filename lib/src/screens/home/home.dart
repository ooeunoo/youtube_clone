import 'package:clone_flutter_youtube/src/screens/home/components/header/home_app_bar.dart';
import 'package:clone_flutter_youtube/src/screens/home/components/video/video_summary.dart';
import 'package:clone_flutter_youtube/src/services/youtube_service.dart';
import 'package:clone_flutter_youtube/src/theme/own_theme.dart';
import 'package:clone_flutter_youtube/src/types/youtube.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:flutter/foundation.dart';

class Debouncer {
  final int milliseconds;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 200);

    final videos = useState<List<Video>>([]);
    final nextPageToken = useState<String?>(null);
    final scrollController = useScrollController();

    void load() async {
      print(nextPageToken.value);
      final result = await YoutubeService().getVideos(nextPageToken.value);
      if (result != null) {
        nextPageToken.value = result.nextPageToken;

        if (result.items != null) {
          final updatedVideos = List.of(videos.value); // 기존 리스트 복사
          updatedVideos.addAll(result.items!); // 새로운 비디오 데이터 추가
          videos.value = updatedVideos; // 상태 업데이트
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
              title: HomeAppBar(),
              floating: true,
              snap: true,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
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
        ),
      ),
    );

    // return SafeArea(
    //     child: CustomScrollView(
    //   controller: scrollController,
    //   slivers: [
    //     const SliverAppBar(
    //       title: HomeAppBar(),
    //       floating: true,
    //       snap: true,
    //     ),
    //     SliverList(
    //         delegate:
    //             SliverChildBuilderDelegate((BuildContext context, int index) {
    //       return GestureDetector(
    //         onTap: () {
    //           Get.toNamed('/video/243434');
    //         },
    //         child: VideoSummary(
    //           key: ValueKey<String>(videos.value[index].id),
    //           video: videos.value[index],
    //         ),
    //       );
    //     }, childCount: videos.value.length))
    //   ],
    // ));
  }
}
