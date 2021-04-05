import 'package:flutter/material.dart';

class CardForm extends StatelessWidget {
  final List<Widget> children;
  final Widget? button;
  final double? paddingHorizontal;

  const CardForm.button({
    required this.children,
    required this.button,
    this.paddingHorizontal = 20,
    Key? key,
  }) : super(key: key);

  const CardForm({
    required this.children,
    this.paddingHorizontal = 20,
    Key? key,
  })  : this.button = null,
        super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: paddingHorizontal ?? 20),
        child: Stack(children: [
          Container(
            margin: EdgeInsets.only(bottom: 28),
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor.withOpacity(0.9),
                borderRadius: BorderRadius.all(const Radius.circular(6)),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                    blurRadius: 20,
                    offset: Offset(0, 20),
                  )
                ]),
            child: Container(
                padding: EdgeInsets.fromLTRB(20, 28, 20, button != null ? 40 + 28 : 28),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: children,
                )),
          ),
          if (button != null)
            Positioned(
              bottom: 0,
              left: paddingHorizontal ?? 20,
              right: paddingHorizontal ?? 20,
              child: button!,
            ),
        ]),
      );
}
