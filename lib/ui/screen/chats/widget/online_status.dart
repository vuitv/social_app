import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnlineStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: Color.fromRGBO(34, 228, 61, 1),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1.5),
        ),
      );
}
