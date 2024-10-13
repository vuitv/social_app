import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../models/post_model.dart';
import '../../profile/user_profile_screen.dart';
import 'comment_widget.dart';
import 'post_contoller.dart';

class PostItem extends StatelessWidget {
  final Post item;

  const PostItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetX<PostController>(
      init: PostController(item),
      global: false,
      builder: (c) => Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: InkWell(
                    onTap: () => Get.toNamed(UserProfileScreen.routeName),
                    borderRadius: BorderRadius.circular(24),
                    child: CircleAvatar(
                      backgroundImage: c.post?.avatarUrl != null ? AssetImage(c.post!.avatarUrl!) : null,
                      radius: 24,
                    ),
                  ),
                ),
                Flexible(
                    child: Text(
                  '${c.post?.userName ?? ''} ',
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                )),
                Text(
                  ' · ${c.post?.timeStamp ?? '_'}',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize),
                ),
              ]),
              const SizedBox(height: 10),

              //
              //if (c.post?.imageUrl != null)
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(6.0),
                    image: c.post!.imageUrl != null
                        ? DecorationImage(
                            image: AssetImage(c.post!.imageUrl!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Obx(() => PostControl(
                        icon: CustomIconButton(
                          onPressed: () => c.liked,
                          icon: c.post!.liked ? HeartIcon() : const Icon(CupertinoIcons.heart),
                        ),
                        title: 'Like',
                        number: c.post!.like,
                      )),
                  PostControl(
                    icon: const Icon(CupertinoIcons.conversation_bubble),
                    title: 'Replies',
                    number: c.post!.comment,
                  ),
                  PostControl(
                    icon: const Icon(CupertinoIcons.arrowshape_turn_up_right),
                    title: 'Shares',
                    number: c.post!.shares,
                  ),
                  CustomIconButton(
                    onPressed: () => null,
                    icon: Icon(CupertinoIcons.ellipsis),
                  )
                ]),
              ),

              const Padding(
                padding: const EdgeInsets.all(10),
                child: Divider(height: 0.5),
              ),

              ...List.generate(
                c.post!.comments.length,
                (index) => CommentItem(item: c.post!.comments[index]),
              )
            ]),
          ));
}

class PostControl extends StatelessWidget {
  final Widget icon;
  final String title;
  final int number;

  const PostControl({
    Key? key,
    required this.icon,
    required this.title,
    this.number = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
        child: Row(children: [
          IconTheme(
            data: Theme.of(context).iconTheme.copyWith(size: 16),
            child: icon,
          ),
          const SizedBox(width: 4),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const SizedBox(width: 4),
          if (number > 0)
            Text(
              '${number < 1000 ? number : '999+'}',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 12),
            ),
        ]),
      );
}

class HeartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromARGB(25, 250, 96, 125),
            blurRadius: 8,
            spreadRadius: -2,
            offset: Offset(0, 2),
          ),
          BoxShadow(
            color: Color.fromARGB(10, 0, 0, 0),
            blurRadius: 8,
            spreadRadius: -2,
            offset: Offset(0, 2),
          ),
        ]),
        child: Icon(CupertinoIcons.heart_fill, color: Color.fromRGBO(250, 96, 125, 1)),
      );
}

class CustomIconButton extends IconButton {
  const CustomIconButton({
    Key? key,
    required Widget icon,
    required Function() onPressed,
  }) : super(
          key: key,
          icon: icon,
          onPressed: onPressed,
          iconSize: 16,
          splashRadius: 12,
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(minWidth: 20, minHeight: 20),
        );
}
