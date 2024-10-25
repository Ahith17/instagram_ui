import 'package:flutter/material.dart';
import 'package:instahomepage1/widgets/buildAddPageWidget.dart';
import 'package:instahomepage1/widgets/buildHomePageWidget.dart';
import 'package:instahomepage1/widgets/buildProfilePageWidget.dart';
import 'package:instahomepage1/widgets/buildReelsPageWidget.dart';
import 'package:instahomepage1/widgets/buildSearchPageWidget.dart';
import 'package:instahomepage1/widgets/chatPage.dart';
import 'package:instahomepage1/widgets/secondPage.dart';

class instaHomePage extends StatefulWidget {
  const instaHomePage({super.key});

  @override
  State<instaHomePage> createState() => _instaHomePageState();
}

class _instaHomePageState extends State<instaHomePage> {
  int indexNum = 0;
  List tabWidget = [
    const BuildHomePageWidget(),
    const BuildSearchPageWidget(
      text: Text('search'),
    ),
    const BuildAddPageWidget(),
    const BuildReelsPageWidget(),
    const BuildProfilePageWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title:
            SizedBox(height: 40, child: Image.asset('assets/images/img.png')),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.favorite_border),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.messenger_outline),
            ),
          ),

          // Padding(padding: EdgeInsets.only(right: 20))
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: tabWidget.elementAt(indexNum),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Search',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box,
              color: Colors.black,
            ),
            label: 'Add',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_creation_outlined,
              color: Colors.black,
            ),
            label: 'Reels',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            label: 'profile',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

// Text('new_user 54500 only iphone 13pro 256GB...'),
