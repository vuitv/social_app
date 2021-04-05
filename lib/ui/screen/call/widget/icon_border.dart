import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  final double? iconSize;
  final BoxBorder? border;

  const CircleIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.iconSize,
    this.border,
  }) : super(key: key);

  CircleIconButton.border({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.iconSize,
  })  : this.border = Border.all(color: const Color.fromRGBO(185, 192, 217, 1)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconSize = this.iconSize ?? 32;
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor.withOpacity(0.7),
        border: border,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        iconSize: iconSize,
        splashRadius: 30,
        icon: Icon(icon),
        onPressed: onPressed,
      ),
    );
  }
}
