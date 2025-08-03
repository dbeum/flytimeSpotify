import 'package:flutter/material.dart';
import 'package:flytime_spotify/feature/album/controller/album_controller.dart';
import 'package:flytime_spotify/feature/album/view/album_view.dart';

import 'package:flytime_spotify/routing/profile.dart';
import 'package:flytime_spotify/routing/librarysearch.dart';
import 'package:provider/provider.dart';

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
                  MaterialPageRoute(
                    builder: (_) => ChangeNotifierProvider(
                      create: (_) {
                        final controller = AlbumController();
                        controller.callOnInit('1xJHno7SmdVtZAtXbdbDZp');
                        return controller;
                      },
                      child: AlbumView(albumId: '1xJHno7SmdVtZAtXbdbDZp'),
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  Image.asset('assets/images/guts.png', height: 65),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GUTS',
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
