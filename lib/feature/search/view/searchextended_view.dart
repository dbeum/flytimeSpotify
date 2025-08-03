import 'package:flutter/material.dart';
import 'package:flytime_spotify/feature/album/controller/album_controller.dart';

import 'package:flytime_spotify/feature/album/model/album_model.dart';
import 'package:flytime_spotify/feature/album/view/album_view.dart';
import 'package:flytime_spotify/feature/search/controller/search_controller.dart';
import 'package:flytime_spotify/feature/search/model/albumsearch_model.dart';
import 'package:flytime_spotify/feature/playlist/model/playlist_model.dart';
import 'package:flytime_spotify/feature/search/view/search_view.dart';

import 'package:flytime_spotify/services/spotifysearch_service.dart';
import 'package:provider/provider.dart';

class Searchextended extends StatefulWidget {
  const Searchextended({super.key});

  @override
  State<Searchextended> createState() => _SearchextendedState();
}

class _SearchextendedState extends State<Searchextended> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SearchController>();
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<SearchingController>();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.7,
                  padding: EdgeInsets.only(left: 10, bottom: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromARGB(255, 40, 40, 40),
                  ),

                  child: TextField(
                    controller: controller.searchingcontroller,

                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'What do you want to listen to?',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search, color: Colors.transparent),
                        onPressed: () {
                          controller.search(
                            controller.searchingcontroller.text.trim(),
                          );
                        },
                      ),
                    ),
                    onSubmitted: (value) => controller.search(value.trim()),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 10),
            if (!controller.isLoading)
              Text(
                'Recent searches',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),

            Center(
              child: Text(
                'Your recent searches will appear here',
                style: TextStyle(color: Colors.grey),
              ),
            ),

            if (controller.isLoading)
              Center(child: CircularProgressIndicator())
            else if (controller.error != null)
              Center(child: Text('Error: $controller.error'))
            else
              Expanded(
                child: ListView.builder(
                  itemCount: controller.searchResults.length,
                  itemBuilder: (context, index) {
                    final album = controller.searchResults[index];
                    return ListTile(
                      leading: album.imageUrl.isNotEmpty
                          ? Image.network(
                              album.imageUrl,
                              width: 50,
                              fit: BoxFit.cover,
                            )
                          : SizedBox(width: 50),
                      title: Text(
                        album.name,
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        album.artist,
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ChangeNotifierProvider(
                              create: (_) {
                                final controller = AlbumController();
                                controller.callOnInit(album.albumId);
                                return controller;
                              },
                              child: AlbumView(albumId: album.albumId),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
