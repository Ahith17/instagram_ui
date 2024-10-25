import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accound Page'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: 400,
        child: Icon(
          Icons.account_box,
          size: 100,
          color: Colors.grey,
        ),
      ),
    );
  }
}
