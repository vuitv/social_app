import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final int badgeNumber;
  final double? radius;
  final double? minWidth;

  const Badge(
    this.badgeNumber, {
    Key? key,
    this.radius = 24,
    this.minWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxNumber = badgeNumber > 99 ? '99+' : '$badgeNumber';

    return Container(
        constraints: BoxConstraints(
          minWidth: minWidth ?? radius ?? 24,
          minHeight: radius ?? 24,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).bannerTheme.backgroundColor,
          borderRadius: BorderRadius.circular(17.5),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).bannerTheme.backgroundColor!.withAlpha(25),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
            BoxShadow(
              color: Colors.black.withAlpha(10),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              maxNumber.toString(),
              maxLines: 1,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
            )));
  }
}
