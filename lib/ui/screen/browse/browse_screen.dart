import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../values/default_data.dart';
import '../../widgets/circle_avatar.dart';
import '../profile/profile_screen.dart';
import 'widget/post_widget.dart';

class BrowseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Browse'),
          actions: [
            CircleAvatarCustom(
              backgroundImage: AssetImage('assets/avatar/own_avatar.png'),
              child: GestureDetector(
                onTap: () => Get.toNamed(ProfileScreen.routeName),
              ),
            ),
          ],
          toolbarHeight: kToolbarHeight + 16,
        ),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: listPost.length,
          itemBuilder: (context, index) => PostItem(item: listPost[index]),
        ),
      );
}
