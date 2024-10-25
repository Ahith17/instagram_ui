import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment Box'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white60,
        child: Center(
            child: Text(
          'Comment Box',
          style: TextStyle(fontSize: 40),
        )),
      ),
    );
  }
}
