import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/user_chat_model.dart';
import '../../../values/default_data.dart';
import '../../widgets/badge.dart';
import '../../widgets/button.dart';
import '../../widgets/circle_avatar.dart';
import 'chat_room_screen.dart';
import 'widget/online_status.dart';

class ChatsScreen extends StatelessWidget {
  static const routeName = '/chats';
  static final route = GetPage(name: routeName, page: ChatsScreen.new);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Chats'),
            actions: [
              CameraButton(
                onPressed: () => null,
              ),
              CircleAvatarCustom(),
            ],
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
                itemCount: listUserChat.length,
                itemBuilder: (context, index) => ChatsItem(item: listUserChat[index]),
              ),
            ),
          ]),
        ),
      );
}

class ChatsItem extends StatelessWidget {
  final UserChat item;

  const ChatsItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(width: 0.5, color: Color.fromRGBO(0, 0, 0, 0.1)),
            borderRadius: BorderRadius.circular(3),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                blurRadius: 10,
                offset: Offset(0, 5),
              )
            ]),
        child: ListTile(
          onTap: () => Get.toNamed(ChatRoomScreen.routeName),
          leading: Stack(children: [
            CircleAvatar(radius: 20),
            if (item.isOnline)
              Positioned(
                top: 0,
                right: 0,
                child: OnlineStatus(),
              ),
          ]),
          title: Text(item.name ?? '',
              maxLines: 1, style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
          subtitle: Text(item.lastMessage ?? ''),
          trailing: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(item.time ?? '',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12, fontWeight: FontWeight.w300)),
            const SizedBox(height: 8),
            BadgeCount(item.unread, radius: 20)
          ]),
        ),
      ));
}
