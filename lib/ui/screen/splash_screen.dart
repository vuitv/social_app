import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../controller/splash_controller.dart';
import '../../values/assets.dart';
import '../../values/sizes.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splash';
  static final route = GetPage(name: routeName, page: () => SplashScreen());

  final ctl = Get.put(SplashController());

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Image(image: Assets.appIcon, fit: BoxFit.contain, width: Sizes.logo),
            Text('Social', style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 40)),
          ]),
        ),
      );
}
