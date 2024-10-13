import 'dart:ui';

import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  static AppController to = Get.find();

  static bool get isDarkMode {
    final brightness = SchedulerBinding.instance.window.platformBrightness;
    return brightness == Brightness.dark;
  }
}
