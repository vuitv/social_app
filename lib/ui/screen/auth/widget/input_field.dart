import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String? label;
  final TextStyle? labelStyle;
  final Widget child;

  const InputField({
    required this.child,
    this.label,
    this.labelStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (label != null) Text(label!, style: labelStyle),
          child,
        ],
      );
}
