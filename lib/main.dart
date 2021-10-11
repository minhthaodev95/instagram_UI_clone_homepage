import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/custom_appbar.dart';
import 'package:instagram_ui_clone/widgets/list_story.dart';
import 'package:instagram_ui_clone/widgets/post_content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: CustomAppbar(),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: const <Widget>[
            ListStory(),
            Divider(color: Colors.black26),
            PostContent(),
            PostContent(),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 35), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, size: 35), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_label, size: 35), label: 'Video'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline, size: 35), label: 'Heart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin_circle, size: 35), label: 'Me'),
            ],
          ),
        ),
      ),
    );
  }
}
