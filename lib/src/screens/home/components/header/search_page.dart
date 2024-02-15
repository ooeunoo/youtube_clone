import 'package:clone_flutter_youtube/src/components/icon/custom_icon.dart';
import 'package:clone_flutter_youtube/src/constants/asset_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends HookWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: CustomIcon(AssetPath.leftArrow),
          ),
          title: Container(),
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: CustomIcon(AssetPath.microphone),
            )
          ],
        ),
        body: Container());
  }
}
