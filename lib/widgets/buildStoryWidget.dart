import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildStoryWidget extends StatefulWidget {
  final Color? backgroundColor;
  final String image;
  final int index;
  const BuildStoryWidget(
      {super.key,
      this.backgroundColor,
      required this.image,
      required this.index});

  @override
  State<BuildStoryWidget> createState() => _BuildStoryWidgetState();
}

class _BuildStoryWidgetState extends State<BuildStoryWidget> {
  // get index => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 46,
              backgroundColor: Colors.greenAccent,
              child: Padding(
                padding: EdgeInsets.all(3),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/img_2.png',
                  ),
                ),
              ),
            ),
            if (widget.index == 0)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  padding: const EdgeInsets.all(1),
                  child: const Icon(
                    Icons.add,
                    color: CupertinoColors.white,
                  ),
                ),
              ),
          ],
        ),
        Text('no_name')
      ],
    );
  }
}
