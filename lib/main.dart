// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_analytics/observer.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/app_controller.dart';
import 'routes.dart';

import 'ui/screen/splash_screen.dart';
import 'ui/widgets/app_error.dart';
import 'values/config.dart';
import 'values/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ErrorWidget.builder = (error) => AppErrorWidget(
        isDev: Config.getEnvironment == Environment.DEV,
        errorDetails: error,
      );

  await Config.initializeApp();
  // await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final c = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    print('=====Build My App=====');
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      // navigatorObservers: [FirebaseAnalyticsObserver(analytics: FirebaseAnalytics())],
      initialRoute: SplashScreen.routeName,
      getPages: AppRoutes.routes,
    );
  }
}
