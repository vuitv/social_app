import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../values/assets.dart';

class FormBackground extends StatelessWidget {
  final String? title;

  const FormBackground({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(mainAxisSize: MainAxisSize.min, children: [
        const SizedBox(height: 32),
        Text(title ?? '', style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 30)),
        const SizedBox(height: 8),
        Text(
          'Please enter your credentials in the form bellow:',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
        ),
        const SizedBox(height: 24),
        Image(
          image: Assets.formBackground,
          fit: BoxFit.contain,
          width: min(MediaQuery.of(context).size.width, 720),
        ),
      ]);
}
