import 'package:flutter/material.dart';

class BuildAddPageWidget extends StatefulWidget {
  const BuildAddPageWidget({super.key});

  @override
  State<BuildAddPageWidget> createState() => _BuildAddPageWidgetState();
}

class _BuildAddPageWidgetState extends State<BuildAddPageWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Add',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
