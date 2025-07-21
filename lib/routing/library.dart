import 'package:flutter/material.dart';
import 'package:flytime_spotify/playlist/nostolgia.dart';
import 'package:flytime_spotify/playlist/olivia.dart';
import 'package:flytime_spotify/playlist/onRepeat.dart';
import 'package:flytime_spotify/profile.dart';
import 'package:flytime_spotify/routing/librarysearch.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 18, 18, 18),
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(360)),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    'U',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(
              ' Your Library',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Color.fromARGB(255, 18, 18, 18),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                builder: (context) {
                  return FractionallySizedBox(
                    heightFactor: 1,
                    child: Librarysearch(),
                  );
                },
              );
            },
            child: Icon(Icons.search, color: Colors.white, size: 30),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_upward, color: Colors.white, size: 15),
                Icon(Icons.arrow_downward, color: Colors.white, size: 15),
                SizedBox(width: 5),
                Text('Recents', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Onrepeat()),
                );
              },
              child: Row(
                children: [
                  Image.asset('assets/images/a5.jpeg', height: 65),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'On Repeat',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Playlist•user',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Olivia()),
                );
              },
              child: Row(
                children: [
                  Image.asset('assets/images/a1.jpeg', height: 65),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Olivia Rodrigro Mix',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Playlist•user',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Nostolgia()),
                );
              },
              child: Row(
                children: [
                  Image.asset('assets/images/a4.jpeg', height: 65),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nostalgic Rewind',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Playlist•user',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
