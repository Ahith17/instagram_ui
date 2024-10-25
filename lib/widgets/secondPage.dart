import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Page'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: 400,
        child: Icon(
          Icons.favorite,
          size: 100,
          color: Colors.grey,
        ),
      ),
    );
  }
}
