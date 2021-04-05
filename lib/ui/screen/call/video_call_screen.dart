import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/button.dart';
import '../../widgets/circle_avatar.dart';
import 'widget/icon_border.dart';

class VideoCallScreen extends StatelessWidget {
  static const routeName = '/videoCall';
  static final route = GetPage(name: routeName, page: () => VideoCallScreen());

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
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 100,
                      height: 153,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                      ),
                    )),
                const SizedBox(height: 20),
              ]),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleIconButton(
                icon: CupertinoIcons.mic_solid,
                onPressed: () => null,
              ),
              const SizedBox(width: 24),
              CircleIconButton(
                iconSize: 42,
                icon: CupertinoIcons.video_camera_solid,
                onPressed: () => null,
              ),
            ]),
            const SizedBox(height: 20),
            CustomButton.icon(
              onPressed: Get.back,
              icon: const Icon(CupertinoIcons.phone_down),
              label: Text('END CALL'),
              width: 60 * 3 + 24 * 2,
              height: 45,
              borderRadius: 22.5,
              color: const Color.fromRGBO(250, 96, 125, 1),
            ),
            SizedBox(height: 50 + MediaQuery.of(context).padding.bottom),
          ]),
        ),
      );
}
