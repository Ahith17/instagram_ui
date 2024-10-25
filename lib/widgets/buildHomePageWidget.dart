import 'package:flutter/material.dart';

import 'buildFeedWidget.dart';
import 'buildStoryWidget.dart';

class BuildHomePageWidget extends StatefulWidget {
  const BuildHomePageWidget({super.key});

  @override
  State<BuildHomePageWidget> createState() => _BuildHomePageWidgetState();
}

class _BuildHomePageWidgetState extends State<BuildHomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: 110,
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: BuildStoryWidget(
                    image: 'assets/images/img_2.png',
                    index: index,
                  ),
                );
              },
            ),
          ),
          const Divider(
            color: Colors.black12,
          ),
          SizedBox(
            height: 670,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const BuildFeedWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
