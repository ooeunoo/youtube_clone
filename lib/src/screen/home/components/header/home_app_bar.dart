import 'package:clone_flutter_youtube/src/component/icon/custom_icon.dart';
import 'package:clone_flutter_youtube/src/constant/asset_path.dart';
import 'package:clone_flutter_youtube/src/route/app_router.dart';
import 'package:clone_flutter_youtube/src/screen/home/components/header/search_page.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_Logo(context), _Menu(context)],
    );
  }
}

Widget _Logo(BuildContext context) {
  Brightness platformBrightness = MediaQuery.of(context).platformBrightness;
  return CustomIcon(
    platformBrightness == Brightness.dark
        ? AssetPath.youtubeDarkLogo
        : AssetPath.youtubeLightLogo,
    size: 100,
  );
}

Widget _Menu(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () {},
        child: SizedBox(
          width: 23,
          height: 23,
          child: CustomIcon(AssetPath.airplay),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GestureDetector(
          onTap: () {},
          child: SizedBox(
              width: 20, height: 20, child: CustomIcon(AssetPath.bell)),
        ),
      ),
      GestureDetector(
        onTap: () {
          AppRouter.pushWidget(SearchPage());
        },
        child: SizedBox(
          width: 26,
          height: 26,
          child: CustomIcon(
            AssetPath.search,
          ),
        ),
      ),
    ],
  );
}
