// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone/page1.dart';
import 'package:instagram_clone/page2.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 38,
        child: _BottomNaviBar(),
      ),
      body: Navigator(
        onGenerateRoute: (settings) {
          Widget page = MyApp();
          if (settings.name == 'page2') page = Page2();
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}

class _BottomNaviBar extends StatelessWidget {
  const _BottomNaviBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 0,
      unselectedFontSize: 0,
      showSelectedLabels: false,
      showUnselectedLabels: true,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 24,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 24,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.slow_motion_video,
              size: 24,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              size: 24,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/736x/f9/96/8d/f9968df268c7dab39bef20cff0a058cf.jpg"),
            ),
            label: ''),
      ],
    );
  }
}
