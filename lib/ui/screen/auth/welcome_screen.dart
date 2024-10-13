import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/assets.dart';
import '../../../values/colors.dart';
import '../../../values/sizes.dart';
import '../../widgets/button.dart';
import '../home_bottom_bar.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome';
  static final route = GetPage(name: routeName, page: () => WelcomeScreen());

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              flex: 5,
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Image(image: Assets.appIcon, fit: BoxFit.contain, width: Sizes.logo),
                const SizedBox(height: 16),
                Text('Social', style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 40)),
                const SizedBox(height: 12),
                Text(
                  'Cool tagline goes here',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w300),
                ),
              ]),
            ),
            Expanded(
              flex: 4,
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const SizedBox(height: 20),
                    CustomButton.icon(
                      width: MediaQuery.of(context).size.width * 0.78,
                      color: AppColors.ceruleanBlueColor,
                      icon: Icon(Icons.star),
                      label: Text('CONNECT WITH FACEBOOK'),
                      onPressed: () => Get.offNamed(HomeBottomBar.routeName),
                    ),
                    const SizedBox(height: 20),
                    CustomButton.icon(
                      width: MediaQuery.of(context).size.width * 0.78,
                      color: AppColors.ceruleanBlueColor,
                      icon: Icon(Icons.mail_outline),
                      label: Text('SIGN UP USING EMAIL'),
                      onPressed: () => Get.toNamed(RegisterScreen.routeName),
                    ),
                  ]),
                ),
                Expanded(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      'I already have an account.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    TextButton(
                      child: Text('LOGIN NOW'),
                      onPressed: () => Get.toNamed(LoginScreen.routeName),
                      style: TextButton.styleFrom(
                        foregroundColor: Theme.of(context).textTheme.bodyLarge?.color,
                        minimumSize: Size(88, 26),
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ]),
                ),
              ]),
            ),
          ]),
        ),
      );
}
