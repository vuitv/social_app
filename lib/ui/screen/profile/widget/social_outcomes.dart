import 'package:flutter/material.dart';

class SocialOutcomes extends StatelessWidget {
  final Widget posts;
  final Widget followers;
  final Widget following;

  final Function()? postOnPressed;
  final Function()? followersOnPressed;
  final Function()? followingOnPressed;

  const SocialOutcomes({
    Key? key,
    required this.posts,
    required this.followers,
    required this.following,
    this.postOnPressed,
    this.followersOnPressed,
    this.followingOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(width: 0.5, color: const Color.fromRGBO(0, 0, 0, 0.1)),
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ]),
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.headline1!,
          child: Row(children: [
            Expanded(
              child: InkWell(
                onTap: postOnPressed,
                child: Column(children: [
                  posts,
                  const SizedBox(height: 8),
                  Text('Posts', style: Theme.of(context).textTheme.subtitle2?.copyWith(fontWeight: FontWeight.w300)),
                ]),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: followersOnPressed,
                child: Column(children: [
                  followers,
                  const SizedBox(height: 8),
                  Text('Followers',
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(fontWeight: FontWeight.w300)),
                ]),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: followingOnPressed,
                child: Column(children: [
                  following,
                  const SizedBox(height: 8),
                  Text('Following',
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(fontWeight: FontWeight.w300)),
                ]),
              ),
            ),
          ]),
        ),
      );
}
