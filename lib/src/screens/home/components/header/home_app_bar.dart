import 'package:clone_flutter_youtube/src/components/icon/custom_icon.dart';
import 'package:clone_flutter_youtube/src/constants/asset_path.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_Logo(), _Menu()],
    );
  }
}

Widget _Logo() {
  return const CustomIcon(
    AssetPath.youtubePremiumLogo,
    size: 24,
    useDefaultColorFilter: true,
  );
}

Widget _Menu() {
  return Row(
    children: [
      GestureDetector(
        onTap: () {},
        child: const SizedBox(
          width: 23,
          height: 23,
          child: CustomIcon(AssetPath.airplay),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GestureDetector(
          onTap: () {},
          child: const SizedBox(
              width: 20, height: 20, child: CustomIcon(AssetPath.bell)),
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: const SizedBox(
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
