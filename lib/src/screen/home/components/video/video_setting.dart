import 'package:clone_flutter_youtube/src/component/icon/custom_icon.dart';
import 'package:clone_flutter_youtube/src/constant/asset_path.dart';
import 'package:clone_flutter_youtube/src/model/asset/asset.dart';
import 'package:flutter/material.dart';

class VideoSetting extends StatelessWidget {
  const VideoSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        child: Column(children: [
          SettingButton(
            context,
            AssetPath.airplay,
            'Play next in queue',
          ),
          SettingButton(context, AssetPath.clock, 'Save to Watch later'),
          SettingButton(context, AssetPath.airplay, 'Save to playlist'),
          SettingButton(context, AssetPath.download, 'Download video'),
          SettingButton(context, AssetPath.share, 'Share'),
          SettingButton(context, AssetPath.ban, 'Not interested', size: 25),
          SettingButton(
            context,
            AssetPath.personBlock,
            "Don't recommend channel",
          ),
          SettingButton(context, AssetPath.flag, 'Report', size: 30)
        ]),
      ),
    );
  }
}

Widget SettingButton(BuildContext context, Asset asset, String title,
    {double? size}) {
  return Container(
      child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      children: [
        CustomIcon(asset, size: size),
        SizedBox(
          width: 40,
        ),
        Text(title, style: Theme.of(context).textTheme.titleMedium)
      ],
    ),
  ));
}
