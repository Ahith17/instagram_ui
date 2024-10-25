import 'package:flutter/material.dart';
import 'package:instahomepage1/widgets/commentsPage.dart';
import 'package:instahomepage1/widgets/sharePage.dart';

class BuildFeedWidget extends StatefulWidget {
  const BuildFeedWidget({super.key});

  @override
  State<BuildFeedWidget> createState() => _BuildFeedWidgetState();
}

class _BuildFeedWidgetState extends State<BuildFeedWidget> {
  bool isFavorite = false;
  bool isBookMark = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 20,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ClipOval(
                    child: Image.asset('assets/images/img_2.png'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              //text
              child: Text('new_user'),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.more_vert_rounded),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 500,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Image.asset(
            'assets/images/img_6.png',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(right: 8)),
            IconButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : null,
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommentsPage()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 7),
                child: Icon(Icons.chat_bubble_outline),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SharePage(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.telegram),
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 253)),
            IconButton(
              onPressed: () {
                setState(() {
                  isBookMark = !isBookMark;
                });
              },
              icon: Icon(
                isBookMark ? Icons.bookmark : Icons.bookmark_border_sharp,
                color: isBookMark ? Colors.black : null,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 230),
              child: Text('Liked by anan__thu and others'),
            ),
            Text('new_user 54500 only iphone 13pro 256GB...'),
            Text(
              'view 1 comment',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '18 hours ago',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
