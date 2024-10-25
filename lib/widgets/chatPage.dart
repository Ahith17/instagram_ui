import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Page'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: 400,
        child: Icon(
          Icons.messenger,
          size: 100,
          color: Colors.grey,
        ),
      ),
    );
  }
}
