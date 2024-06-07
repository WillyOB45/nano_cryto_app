import 'package:flutter/material.dart';

class CircleTiles extends StatelessWidget {
  IconData iconData;
  CircleTiles({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration:
          BoxDecoration(color: Colors.green.shade300, shape: BoxShape.circle),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
