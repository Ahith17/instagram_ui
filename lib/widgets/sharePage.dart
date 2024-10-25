import 'package:flutter/material.dart';

class SharePage extends StatefulWidget {
  const SharePage({super.key});

  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Page'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white60,
        child: Center(
            child: Text(
          'Share Page',
          style: TextStyle(fontSize: 40),
        )),
      ),
    );
  }
}
