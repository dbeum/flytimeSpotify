import 'package:flutter/material.dart';
import 'package:flytime_spotify/providers/play.dart';
import 'package:flytime_spotify/routing/home.dart';
import 'package:flytime_spotify/routing/library.dart';
import 'package:flytime_spotify/routing/search.dart';
import 'package:flytime_spotify/routing/searchextended.dart';
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
      body: Stack(
        children: [
          _screens[_selectedIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.deepOrangeAccent,
              ),

              child: Column(
                children: [
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/images/playback.png'),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Track 1- Default Artist'),
                                Text('Speaker'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.speaker_outlined, color: Colors.white),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed: provider.togglePlay,
                            icon: provider.isplayed
                                ? Icon(Icons.pause, color: Colors.white)
                                : Icon(Icons.play_arrow, color: Colors.white),
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
