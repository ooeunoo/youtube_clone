import 'package:clone_flutter_youtube/src/navigation/pages.dart';
import 'package:clone_flutter_youtube/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final SharedPreferences prefs = await SharedPreferences.getInstance();

  runApp((const ProviderScope(child: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Clone Flutter Youtube',
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: ThemeMode.system,
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    );
  }
}
