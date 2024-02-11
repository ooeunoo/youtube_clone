import 'package:clone_flutter_youtube/src/components/icon/custom_icon.dart';
import 'package:clone_flutter_youtube/src/constants/asset_path.dart';
import 'package:clone_flutter_youtube/src/hooks/useBottomsheet.dart';
import 'package:clone_flutter_youtube/src/screens/home/home.dart';
import 'package:clone_flutter_youtube/src/screens/profile/profile.dart';
import 'package:clone_flutter_youtube/src/screens/shorts/shorts.dart';
import 'package:clone_flutter_youtube/src/screens/subscription/subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum BottomTab { home, shorts, uploadVideo, subscriptions, profile }

class App extends HookWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomTabIndex = useState<int>(0);
    final uploadVideoBottomSheetController = useBottomSheet(context,
        builder: (BuildContext context, BottomSheetController controller) {
      return Container();
    }, isDismissible: true, enableDrag: true);

    void changeBottomNaviagtionIndex(int index) {
      if (BottomTab.values[index] == BottomTab.uploadVideo) {
        uploadVideoBottomSheetController.open();
      } else {
        bottomTabIndex.value = index;
      }
    }

    Widget changeBody(int index) {
      switch (BottomTab.values[index]) {
        case BottomTab.home:
          return const Home();
        case BottomTab.shorts:
          return const Shorts();
        case BottomTab.subscriptions:
          return const Subscription();
        case BottomTab.profile:
          return const Profile();
        case BottomTab.uploadVideo:
          break;
      }
      return Container();
    }

    return Scaffold(
      body: changeBody(bottomTabIndex.value),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomTabIndex.value,
        onTap: changeBottomNaviagtionIndex,
        items: const [
          BottomNavigationBarItem(
            icon: CustomIcon(AssetPath.homeOff),
            activeIcon: CustomIcon(AssetPath.homeOn),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: CustomIcon(AssetPath.shortsOff, size: 22),
              activeIcon: CustomIcon(AssetPath.shortsOn, size: 22),
              label: 'Shorts'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: CustomIcon(AssetPath.plus, size: 35),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: CustomIcon(
                AssetPath.subscriptionOff,
              ),
              activeIcon: CustomIcon(
                AssetPath.subscriptionOn,
              ),
              label: 'Subscriptions'),
          BottomNavigationBarItem(
              icon: CustomIcon(AssetPath.profileOff),
              activeIcon: CustomIcon(AssetPath.profileOn),
              label: 'You'),
        ],
      ),
    );
  }
}
