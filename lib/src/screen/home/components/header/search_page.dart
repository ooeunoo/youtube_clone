import 'package:clone_flutter_youtube/src/component/icon/custom_icon.dart';
import 'package:clone_flutter_youtube/src/constant/asset_path.dart';
import 'package:clone_flutter_youtube/src/route/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends HookWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                AppRouter.pop();
              },
              child: Transform.scale(
                scale: 0.4,
                child: CustomIcon(AssetPath.leftArrow),
              )),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: Container(
              height: 35, // Adjust the height as needed
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search YouTube',
                  hintStyle: TextStyle(
                      color: Colors.grey), // Set placeholder color here
                  border: InputBorder.none,
                ),
                cursorColor: Colors.white,
                cursorHeight: 15,
              ),
            ),
          ),
          titleSpacing: 0, // Reduce the distance between leading and title

          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: 35, // Adjust width and height as needed
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).cardColor,
                ),
                child: Center(
                  child: CustomIcon(AssetPath.microphone, size: 25),
                ),
              ),
            )
          ],
        ),
        body: Container());
  }
}
