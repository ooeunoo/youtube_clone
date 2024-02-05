part of 'pages.dart';

abstract class Routes {
  static const app = _Paths.app;

  static const login = _Paths.login;

  static const videoDetail = _Paths.videoDetail;

  static const error = _Paths.error;

  Routes._();
}

abstract class _Paths {
  static const app = '/';
  static const error = '/error';
  static const login = '/login';
  static const videoDetail = '/video/:videoId';
}
