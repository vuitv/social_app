import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  static HomeController to = Get.find();

  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  void onReady() {
    print('HomeController: onReady()');
    super.onReady();
  }
}
