import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/profile_controller.dart';
import '../../widgets/button.dart';
import '../../widgets/circle_avatar.dart';
import 'widget/social_outcomes.dart';

class UserProfileScreen extends StatelessWidget {
  static const routeName = '/userProfile';
  static final route = GetPage(name: routeName, page: UserProfileScreen.new);

  final c = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: CustomBackButton(),
          actions: [
            CircleAvatarCustom(),
          ],
          toolbarHeight: kToolbarHeight + 16,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(children: [
              Row(children: [
                Expanded(
                  flex: 2,
                  child: CircleAvatarCustom.withBorder(
                    minRadius: 60,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 3,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('Amanda Roberts', maxLines: 1, style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 4),
                    Text('San Francisco, CA',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w300)),
                    const SizedBox(height: 4),
                    Text('78 posts 213 follower', style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12)),
                    const SizedBox(height: 10),
                    CustomButton.withoutBox(
                      onPressed: () => null,
                      label: Text('Follow'),
                      height: 30,
                      borderRadius: 4,
                    ),
                  ]),
                )
              ]),
              const SizedBox(height: 35),
              SocialOutcomes(
                posts: Text('250'),
                followers: Text('353k'),
                following: Text('1.5k'),
              ),
            ]),
          ),
        ),
      );
}
