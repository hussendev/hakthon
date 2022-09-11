import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double size;

  AppText({Key? key, required this.text, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.black, fontSize: size),
    );
  }
}

