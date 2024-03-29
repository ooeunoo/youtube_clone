// ignore_for_file: constant_identifier_names
import 'package:clone_flutter_youtube/src/app.dart';
import 'package:flutter/material.dart';

//Routes
import 'routes.dart';

/// A utility class provides basic methods for navigation.
/// This class has no constructor and all variables are `static`.
@immutable
class AppRouter {
  const AppRouter._();

  /// The global key used to access navigator without context
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  /// The name of the route that loads on app startup
  static const String initialRoute = Routes.InitialAppScreenRoute;

  /// This method is used when the app is navigating using named routes.
  ///
  /// It maps each route name to a specific screen route.
  ///
  /// In case of unknown route name, it returns a route indicating error.
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case Routes.InitialAppScreenRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const App(),
          settings: const RouteSettings(name: Routes.InitialAppScreenRoute),
        );
      // case Routes.LoginScreenRoute:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) => const (),
      //     settings: const RouteSettings(name: Routes.HomeScreenRoute),
      //   );

      default:
        return _errorRoute();
    }
  }

  /// This method returns an error page to indicate redirection to an
  /// unknown route.
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Unknown Route'),
        ),
        body: const Center(
          child: Text('Unknown Route'),
        ),
      ),
    );
  }

  /// This method is used to navigate to a screen using it's name
  static Future<dynamic> pushNamed(String routeName, {dynamic args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  static Future<void> pushWidget(Widget widget) {
    return navigatorKey.currentState!.push(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  /// This method is used to navigate back to the previous screen.
  ///
  /// The [result] can contain any value that we want to return to the previous
  /// screen.
  static Future<void> pop([dynamic result]) async {
    navigatorKey.currentState!.pop(result);
  }

  /// This method is used to navigate all the way back to a specific screen.
  ///
  /// The [routeName] is the name of the screen we want to go back to.
  static void popUntil(String routeName) {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }

  /// This method is used to navigate all the way back to the first screen
  /// shown on startup i.e. the [initialRoute].
  static void popUntilRoot() {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(initialRoute));
  }
}
