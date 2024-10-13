import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/avatar_glow.dart';
import '../../widgets/button.dart';
import '../../widgets/circle_avatar.dart';
import 'widget/icon_border.dart';

class VoiceCallScreen extends StatelessWidget {
  static const routeName = '/voiceCall';
  static final route = GetPage(name: routeName, page: VoiceCallScreen.new);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: CustomBackButton(),
          actions: [CircleAvatarCustom()],
          toolbarHeight: kToolbarHeight + 16,
        ),
        body: Center(
          child: Column(children: [
            Expanded(
              child: Column(children: [
                AvatarGlow(
                    endRadius: 110,
                    glowColor:const Color.fromRGBO(89, 109, 255, 1),
                    child: Material(
                        elevation: 1,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          // backgroundColor: Colors.grey[100],
                          radius: 60,
                        ))),
                const SizedBox(height: 30),
                Text(
                  'Rona Jameson',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 22),
                ),
                Text(
                  'rona.jameson@gmail.com',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 20),
                Text('2:53'),
                const SizedBox(height: 20),
              ]),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleIconButton.border(
                icon: CupertinoIcons.mic_solid,
                onPressed: () => null,
              ),
              const SizedBox(width: 24),
              CircleIconButton.border(
                iconSize: 42,
                icon: CupertinoIcons.video_camera_solid,
                onPressed: () => null,
              ),
              const SizedBox(width: 24),
              CircleIconButton.border(
                icon: CupertinoIcons.volume_up,
                onPressed: () => null,
              ),
            ]),
            const SizedBox(height: 80),
            CustomButton.icon(
              onPressed: Get.back,
              icon: Icon(CupertinoIcons.phone_down),
              label: Text('END CALL'),
              width: 60 * 3 + 24 * 2,
              height: 45,
              borderRadius: 22.5,
              color: Color.fromRGBO(250, 96, 125, 1),
            ),
            SizedBox(height: 50 + MediaQuery.of(context).padding.bottom),
          ]),
        ),
      );
}
