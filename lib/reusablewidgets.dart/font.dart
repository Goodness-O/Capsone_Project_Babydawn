import 'package:capsone_project_babydawn/reusablewidgets.dart/colors.dart';
import 'package:flutter/material.dart';

class HeadingFont extends StatelessWidget {
  const HeadingFont({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: black,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontFamily: "Roboto",
          letterSpacing: 0.004),
    );
  }
}

class TextFormFont extends StatelessWidget {
  const TextFormFont({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 13, fontFamily: "Roboto"),
    );
  }
}
