import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton.icon({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.label,
    this.color,
    this.width,
    this.height,
    this.side,
    this.borderRadius,
    this.boxShadow,
  }) : super(key: key);

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.width,
    this.height,
    this.color,
    this.side,
    this.borderRadius,
    this.boxShadow,
  })  : this.icon = const SizedBox(),
        super(key: key);

  const CustomButton.withoutBox({
    Key? key,
    required this.onPressed,
    required this.label,
    this.width,
    this.height,
    this.color,
    this.side,
    this.borderRadius,
  })  : this.icon = const SizedBox(),
        this.boxShadow = const [],
        super(key: key);

  final Widget icon;
  final Widget label;
  final double? width;
  final double? height;
  final Color? color;
  final BorderSide? side;
  final double? borderRadius;
  final Function() onPressed;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          boxShadow: boxShadow ??
              [
                BoxShadow(
                  color: color?.withOpacity(0.25) ?? const Color.fromRGBO(86, 128, 250, 0.25),
                  blurRadius: 30,
                  offset: Offset(0, 10),
                ),
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  blurRadius: 20,
                  offset: Offset(0, 5),
                ),
              ],
        ),
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: this.icon,
          label: label,
          style: ElevatedButton.styleFrom(
            minimumSize: Size(min(this.width ?? 64, 500), this.height ?? 56),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              side: side ?? BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(this.borderRadius ?? 10)),
            ),
          ),
        ),
      );
}

class CustomBackButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CustomBackButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
        icon: Icon(CupertinoIcons.arrow_left),
        splashRadius: 22,
        splashColor: Theme.of(context).appBarTheme.iconTheme?.color!.withAlpha(20),
        onPressed: onPressed ?? () => Navigator.maybePop(context),
      );
}

class CameraButton extends AppBarButton {
  const CameraButton({Key? key, VoidCallback? onPressed})
      : super(key: key, icon: CupertinoIcons.camera_fill, onPressed: onPressed);
}

class CallButton extends AppBarButton {
  const CallButton({Key? key, VoidCallback? onPressed})
      : super(key: key, icon: CupertinoIcons.phone_fill, onPressed: onPressed);
}

class VideoCallButton extends AppBarButton {
  const VideoCallButton({Key? key, VoidCallback? onPressed})
      : super(
          key: key,
          icon: CupertinoIcons.videocam_fill,
          onPressed: onPressed,
          iconSize: 34,
        );
}

class AppBarButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final double? iconSize;

  const AppBarButton({
    Key? key,
    required this.icon,
    this.onPressed,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
        icon: Icon(icon),
        iconSize: iconSize ?? 24,
        splashRadius: 22,
        splashColor: Theme.of(context).appBarTheme.iconTheme?.color!.withAlpha(20),
        onPressed: onPressed,
      );
}
