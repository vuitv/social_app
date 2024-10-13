import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/splash_controller.dart';
import '../../values/assets.dart';
import '../../values/sizes.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splash';
  static final route = GetPage(name: routeName, page: SplashScreen.new);

  final ctl = Get.put(SplashController());

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Image(image: Assets.appIcon, fit: BoxFit.contain, width: Sizes.logo),
            Text('Social', style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 40)),
          ]),
        ),
      );
}
