import 'dart:convert';
import 'dart:developer';

import 'package:clone_flutter_youtube/src/constants/env.dart';
import 'package:clone_flutter_youtube/src/models/youtube/channelResponse/channel_response.dart';
import 'package:clone_flutter_youtube/src/models/youtube/videoListResponse/video_list_response.dart';
import 'package:clone_flutter_youtube/src/models/youtube/youtube.dart';
import 'package:clone_flutter_youtube/src/utils/uri.dart';
import 'package:http/http.dart' as http;

class YoutubeService {
  final String baseUri = 'https://www.googleapis.com/youtube/v3/';

  Future<VideoListResponse?> getVideos(String? pageToken) async {
    try {
      Map<String, String> params = {
        'key': ENV.youtubeApiKey,
        'part': 'id,snippet,status,statistics',
        'chart': 'mostPopular',
        'maxResults': '5',
      };

      if (pageToken != null) {
        params['pageToken'] = pageToken;
      }

      final Uri uri = generateQueryParamUri("${baseUri}videos", params);

      final response = await http.get(uri);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        VideoListResponse result = VideoListResponse.fromJson(data);
        return result;
      }

      return null;
    } catch (e) {
      print(e);
      log(e.toString());
      return null;
    }
  }

  Future<ChannelResponse?> getChannel(String channelId) async {
    try {
      Map<String, String> params = {
        'key': ENV.youtubeApiKey,
        'part': 'snippet,statistics',
        'id': channelId,
      };

      final Uri uri = generateQueryParamUri("${baseUri}channels", params);

      final response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        ChannelResponse result = ChannelResponse.fromJson(data);
        return result;
      }

      return null;
    } catch (e) {
      print(e);
      log(e.toString());
      return null;
    }
  }
}
