import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/button.dart';
import '../../widgets/circle_avatar.dart';
import '../call/video_call_screen.dart';
import '../call/voice_call_screen.dart';
import 'widget/online_status.dart';

class ChatRoomScreen extends StatelessWidget {
  static const routeName = '/chatting';
  static final route = GetPage(name: routeName, page: () => ChatRoomScreen());

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            leading: CustomBackButton(),
            actions: [
              CallButton(onPressed: () => Get.toNamed(VoiceCallScreen.routeName)),
              VideoCallButton(onPressed: () => Get.toNamed(VideoCallScreen.routeName)),
              CircleAvatarCustom(),
            ],
            toolbarHeight: kToolbarHeight + 16,
          ),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Stack(children: [
                    CircleAvatar(radius: 20),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: OnlineStatus(),
                    ),
                  ]),
                  title: Text(
                    'Amanda Roberts',
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Active now'),
                ),
                const SizedBox(height: 8),
                const Divider(height: 0.5),
              ]),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Bubble(),
              ),
            ),
          ]),
        ),
      );
}

class Bubble extends StatelessWidget {
  final isMe = Random().nextBool();

  @override
  Widget build(BuildContext context) {
    final mainAxisAlignment = isMe ? MainAxisAlignment.end : MainAxisAlignment.start;
    final backgroundColor = isMe ? Theme.of(context).primaryColor : Theme.of(context).cardColor;
    final textColor = isMe ? Colors.white : null;

    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: mainAxisAlignment,
          children: [
            if (!isMe)
              Column(children: [
                CircleAvatar(radius: 20),
                const SizedBox(height: 10),
                Text('11:03'),
              ]),
            SizedBox(width: 10),
            Container(
              constraints: BoxConstraints(
                minWidth: 60,
                maxWidth: MediaQuery.of(context).size.width * 0.75,
                minHeight: 40,
              ),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: backgroundColor,
                border: Border.all(color: Color.fromARGB(255, 226, 232, 243)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Hello, i’m glad to see you :)',
                style: TextStyle(fontSize: 12, color: textColor),
              ),
            ),
          ],
        ));
  }
}
