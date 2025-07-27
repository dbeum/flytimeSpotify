import 'package:flutter/material.dart';
import 'package:flytime_spotify/providers/play.dart';
import 'package:flytime_spotify/routing/home.dart';
import 'package:flytime_spotify/routing/library.dart';
import 'package:flytime_spotify/routing/search.dart';
import 'package:provider/provider.dart';

class h1 extends StatefulWidget {
  const h1({super.key});

  @override
  State<h1> createState() => _h1State();
}

class _h1State extends State<h1> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [Home(), Search(), Library()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlayProvider>(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      body: Stack(children: [_screens[_selectedIndex]]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined),
            label: 'Your Library',
          ),
        ],
      ),
    );
  }
}
