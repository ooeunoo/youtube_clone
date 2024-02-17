import 'package:clone_flutter_youtube/src/component/icon/custom_icon.dart';
import 'package:clone_flutter_youtube/src/constant/asset_path.dart';
import 'package:clone_flutter_youtube/src/theme/own_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Profile extends HookWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CustomIcon(AssetPath.airplay),
                SizedBox(
                  width: 20,
                ),
                CustomIcon(AssetPath.bell, size: 20),
                SizedBox(
                  width: 20,
                ),
                CustomIcon(
                  AssetPath.search,
                ),
                SizedBox(
                  width: 20,
                ),
                CustomIcon(AssetPath.setting, size: 20),
              ],
            )),
      ]),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIcon(
              AssetPath.folder,
              size: 150,
            ),
            SizedBox(
              height: 50,
            ),
            Text('Enjoy your favorite videos',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 20),
            Text("Sign in to access videos that you've liked or saved",
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: null,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10.0),
                  child: Text('Sign in',
                      style: Theme.of(context).own().accentTitleMedium),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
