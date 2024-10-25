import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Page'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: 400,
        child: Icon(
          Icons.add_box_outlined,
          size: 100,
          color: Colors.grey,
        ),
      ),
    );
  }
}
