import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/button.dart';
import '../../widgets/circle_avatar.dart';
import '../profile/user_profile_screen.dart';

class FollowersScreen extends StatelessWidget {
  static const routeName = '/followers';
  static final route = GetPage(name: routeName, page: FollowersScreen.new);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            leading: CustomBackButton(),
            title: Text('Your followers', style: Theme.of(context).textTheme.displayLarge),
            actions: [CircleAvatarCustom()],
            centerTitle: true,
            toolbarHeight: kToolbarHeight + 16,
          ),
          body: Column(children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Icon(CupertinoIcons.search),
                    ),
                    prefixIconConstraints: BoxConstraints(
                      minHeight: 24,
                      minWidth: 24,
                    ),
                    hintText: 'Search',
                  ),
                )),
            Flexible(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => FollowerItem(),
              ),
            ),
          ]),
        ),
      );
}

class FollowerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => Get.toNamed(UserProfileScreen.routeName),
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CircleAvatar(minRadius: 28),
            const SizedBox(width: 24),
            Expanded(
              child: Column(children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Expanded(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text('Amanda Roberts', maxLines: 1, style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: 4),
                      Text(
                        'San Francisco, CA',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 4),
                      Text('78 posts 213 followe',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12)),
                      const SizedBox(height: 10),
                    ]),
                  ),
                  CustomButton.withoutBox(
                    onPressed: () => null,
                    label: Text('Follow'),
                    height: 30,
                    borderRadius: 4,
                  ),
                ]),
                const SizedBox(height: 20),
                const Divider(height: 0.5),
              ]),
            ),
          ]),
        ),
      );
}
