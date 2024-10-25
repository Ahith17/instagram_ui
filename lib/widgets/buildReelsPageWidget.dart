import 'package:flutter/material.dart';

class BuildReelsPageWidget extends StatefulWidget {
  final String? Text;
  final TextStyle? style;
  const BuildReelsPageWidget({super.key, this.Text, this.style});

  @override
  State<BuildReelsPageWidget> createState() => _BuildReelsPageWidgetState();
}

class _BuildReelsPageWidgetState extends State<BuildReelsPageWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Reels',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
