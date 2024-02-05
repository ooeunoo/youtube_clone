import 'package:clone_flutter_youtube/src/app.dart';
import 'package:clone_flutter_youtube/src/screens/video_detail/video_detail.dart';
import 'package:get/get.dart';

part 'routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.app;

  static final routes = [
    GetPage(
      name: _Paths.app,
      page: () => const App(),
      // bindings: [AppBinding()],
      participatesInRootNavigator: true,
      preventDuplicates: true,
      // middlewares: [AuthenticationMiddleware()],
    ),
    GetPage(name: _Paths.videoDetail, page: () => const VideoDetail())
  ];
}
