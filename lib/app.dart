// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'View/home_view.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Image.asset('assets/images/home.png'))
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            constraints: BoxConstraints.tight(const Size(50.0, 50.0)),
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
        body: const HomeView(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              print('index = $index');
            });
          },
          elevation: 0.0,
          currentIndex: currentIndex,
          selectedItemColor: Colors.orange,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/home.png',
                ),
                color: Colors.orange,
                semanticLabel: 'Home',
              ),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/talk.png'),
                //semanticLabel: 'Talk To',
                color: Colors.black,
              ),
              label: 'Talk To',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                const AssetImage('assets/images/ask.png'),
                color: Colors.black,
                //semanticLabel: 'Ask',
              ),
              label: 'Ask',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                const AssetImage('assets/images/reports.png'),
                color: Colors.black,
                //semanticLabel: 'Ask',
              ),
              label: 'reports',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.black,
                //semanticLabel: 'Chats',
              ),
              label: 'Chat',
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
