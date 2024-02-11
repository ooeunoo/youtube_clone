import 'package:clone_flutter_youtube/src/types/youtube.dart';
import 'package:flutter/material.dart';

class VideoDetail extends StatelessWidget {
  final Video video;
  final Channel? channel;

  const VideoDetail({Key? key, required this.video, this.channel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        Container(height: 250, color: Colors.grey.withOpacity(0.5)),
        _Description(video),
        _User(),
        _Statistics(),
        _Comments()
      ]),
    );
  }
}

Widget _Description(
  Video video,
) {
  final videoTitle = video.snippet.title;
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        direction: Axis.vertical,
        spacing: 10,
        children: [
          Text(
            videoTitle,
            style:
                TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
          ),
          Wrap(
            spacing: 10,
            children: [
              Text("2.7M",
                  style: TextStyle(
                      fontSize: 13, color: Colors.black.withOpacity(0.5))),
              Text("시간",
                  style: TextStyle(
                      fontSize: 13, color: Colors.black.withOpacity(0.5))),
              Text("...more",
                  style: TextStyle(
                      fontSize: 13, color: Colors.black.withOpacity(0.5))),
            ],
          )
        ],
      ),
    ),
  );
}

Widget _User() {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(),
              const SizedBox(
                width: 10,
              ),
              Text(
                "개발하는 남자",
                style: TextStyle(
                    fontSize: 13, color: Colors.black.withOpacity(0.5)),
              ),
              const SizedBox(
                width: 10,
              ),
              Text("구독자 수",
                  style: TextStyle(
                      fontSize: 13, color: Colors.black.withOpacity(0.5))),
            ],
          ),
          GestureDetector(
            child: const Text("Subscribe", style: TextStyle(fontSize: 13)),
          )
        ],
      ));
}

Widget _Statistics() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          color: Colors.red,
          width: 120,
          height: 20,
        ),
        Container(
          color: Colors.black,
          width: 120,
          height: 20,
        ),
        Container(
          color: Colors.blue,
          width: 120,
          height: 20,
        ),
        Container(
          color: Colors.yellow,
          width: 120,
          height: 20,
        )
      ],
    ),
  );
}

Widget _Comments() {
  return Card(
    color: Colors.white,
    elevation: 2,
    child: Container(
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
  );
}
