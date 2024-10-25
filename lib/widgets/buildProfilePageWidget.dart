import 'package:flutter/material.dart';

class BuildProfilePageWidget extends StatefulWidget {
  final String? Text;
  final TextStyle? style;
  const BuildProfilePageWidget({super.key, this.Text, this.style});

  @override
  State<BuildProfilePageWidget> createState() => _BuildProfilePageWidgetState();
}

class _BuildProfilePageWidgetState extends State<BuildProfilePageWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile ',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
