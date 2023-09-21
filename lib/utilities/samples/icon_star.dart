import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconStar extends StatefulWidget {
  const IconStar({Key? key}) : super(key: key);

  @override
  State<IconStar> createState() => _IconStarState();
}

class _IconStarState extends State<IconStar> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        child: Icon(isPressed
            ? Icons.star
            : Icons.star_border_outlined, color: const Color(0xFFFFFFFF)),
        onPressed: () {
          setState(() {
            isPressed = !isPressed;
          });
        });
  }
}
