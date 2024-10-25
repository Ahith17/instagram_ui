import 'dart:ffi';

import 'package:flutter/material.dart';

class BuildSearchPageWidget extends StatefulWidget {
  final Text text;
  final TextStyle? style;
  final double? fontSize;
  const BuildSearchPageWidget(
      {super.key, required this.text, this.style, this.fontSize});

  @override
  State<BuildSearchPageWidget> createState() => _BuildSearchPageWidgetState();
}

class _BuildSearchPageWidgetState extends State<BuildSearchPageWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
