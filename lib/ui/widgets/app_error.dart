import 'package:flutter/material.dart';

import '../../values/assets.dart';
import '../../values/sizes.dart';
import '../../values/strings.dart';
import '../../values/styles.dart';

class AppErrorWidget extends StatelessWidget {
  final FlutterErrorDetails errorDetails;
  final bool isDev;

  const AppErrorWidget({
    required this.errorDetails,
    this.isDev = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            padding: const EdgeInsets.all(Sizes.s24),
            child: ListView(children: <Widget>[
              Container(
                child: const Image(image: Assets.appIcon, fit: BoxFit.contain),
                height: Sizes.logo,
                width: Sizes.logo,
              ),
              const SizedBox(height: Sizes.s24),
              Text(
                Strings.crashFinalTitle,
                style: TextStyles.title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Sizes.s12),
              const Text(
                Strings.crashFinalMessage,
                style: TextStyles.message,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: Sizes.s12),
              if (isDev) ...[
                Text(
                  '${errorDetails.summary.toString()}',
                  style: TextStyles.header1.copyWith(color: Colors.red),
                ),
                const SizedBox(height: Sizes.s12),
                Text("$errorDetails", style: TextStyle().copyWith(fontSize: 13, color: Colors.red)),
              ],
              const SizedBox(height: Sizes.s32),
            ]),
          ),
        ),
      );
}
