import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/profile_controller.dart';
import '../../../values/assets.dart';
import '../../widgets/button.dart';
import '../../widgets/circle_avatar.dart';
import '../browse/create_post_screen.dart';
import '../followers/followers_screen.dart';
import 'widget/social_outcomes.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';
  static final route = GetPage(name: routeName, page: () => ProfileScreen());

  final c = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: const [
                    Color.fromARGB(100, 255, 255, 255),
                    Color.fromARGB(0, 250, 250, 250),
                  ],
                ),
              ),
              child: Image(image: Assets.coverImage),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(children: [
                SizedBox(height: MediaQuery.of(context).padding.top + kToolbarHeight + 14),
                Stack(clipBehavior: Clip.none, alignment: Alignment.center, children: [
                  CircleAvatarCustom.withBorder(minRadius: 60),
                  Positioned(
                    right: 0,
                    child: CustomButton(
                      onPressed: () => null,
                      label: Text(
                        'EDIT PROFILE',
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText2?.color),
                      ),
                      height: 45,
                      color: Theme.of(context).cardColor,
                      side: BorderSide(width: 0.5, color: Color.fromRGBO(185, 192, 217, 1)),
                    ),
                  ),
                ]),
                const SizedBox(height: 20),
                Text(
                  'Lisa Springston',
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'San Francisco, CA',
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 30),
                SocialOutcomes(
                  posts: Text('250'),
                  postOnPressed: () => Get.toNamed(CreatePostScreen.routeName),
                  followers: Text('353k'),
                  followersOnPressed: () => Get.toNamed(FollowersScreen.routeName),
                  following: Text('1.5k'),
                  followingOnPressed: () => null,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    childAspectRatio: 6 / 5,
                    crossAxisCount: 3,
                  ),
                  itemCount: 20,
                  itemBuilder: (_, __) => Container(
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
                const SizedBox(height: 24),
              ]),
            ),
          ]),
        ),
      );
}
