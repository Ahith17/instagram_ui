import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: 400,
        child: const Icon(
          Icons.search,
          size: 100,
          color: Colors.black26,
        ),
      ),
    );
  }
}
// appBar: AppBar(
//   title: Text('Search Page'),
// ),
