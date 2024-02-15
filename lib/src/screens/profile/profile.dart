import 'package:clone_flutter_youtube/src/components/icon/custom_icon.dart';
import 'package:clone_flutter_youtube/src/constants/asset_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Profile extends HookWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIcon(
              AssetPath.folder,
              size: 150,
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
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(20)),
                child: const Text('Sign in'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
