import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../values/themes.dart';

class CircleAvatarCustom extends StatelessWidget {
  const CircleAvatarCustom({
    Key? key,
    this.child,
    this.backgroundColor,
    this.backgroundImage,
    this.foregroundImage,
    this.onBackgroundImageError,
    this.onForegroundImageError,
    this.foregroundColor,
    this.radius,
    this.minRadius,
    this.maxRadius,
    this.border,
    this.padding = const EdgeInsets.all(12),
    this.boxShadow = const [
      BoxShadow(
        color: Color.fromRGBO(86, 128, 250, 0.45),
        spreadRadius: 1,
        blurRadius: 10,
        offset: Offset(0, 6),
      ),
    ],
  }) : super(key: key);

  factory CircleAvatarCustom.withBorder({
    Widget? child,
    Color? backgroundColor,
    Color? foregroundColor,
    ImageProvider? backgroundImage,
    ImageProvider? foregroundImage,
    ImageErrorListener? onBackgroundImageError,
    ImageErrorListener? onForegroundImageError,
    double? radius,
    double? minRadius,
    double? maxRadius,
  }) =>
      CircleAvatarCustom(
        child: child,
        backgroundColor: backgroundColor,
        backgroundImage: backgroundImage,
        foregroundImage: foregroundImage,
        onBackgroundImageError: onBackgroundImageError,
        onForegroundImageError: onForegroundImageError,
        foregroundColor: foregroundColor,
        radius: radius,
        minRadius: minRadius,
        maxRadius: maxRadius,
        padding: EdgeInsets.zero,
        border: Border.all(width: 5.0, color: Get.isDarkMode ? Themes.darkTheme.primaryColorDark : Colors.white),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            spreadRadius: 8,
            blurRadius: 25,
            offset: Offset(0, 10),
          ),
        ],
      );

  final Widget? child;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final ImageProvider? backgroundImage;
  final ImageProvider? foregroundImage;
  final ImageErrorListener? onBackgroundImageError;
  final ImageErrorListener? onForegroundImageError;
  final double? radius;
  final double? minRadius;
  final double? maxRadius;
  final EdgeInsets padding;
  final Border? border;
  final List<BoxShadow>? boxShadow;

  Widget get _child => CircleAvatar(
        child: this.child,
        backgroundColor: this.backgroundColor,
        backgroundImage: this.backgroundImage,
        foregroundImage: this.foregroundImage,
        onBackgroundImageError: this.onBackgroundImageError,
        onForegroundImageError: this.onForegroundImageError,
        foregroundColor: this.foregroundColor,
        radius: this.radius,
        minRadius: this.minRadius,
        maxRadius: this.maxRadius,
      );

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: border,
            boxShadow: boxShadow,
          ),
          child: _child,
        ),
      );
}
