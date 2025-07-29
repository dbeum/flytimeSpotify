import 'package:flutter/material.dart';
import 'package:flytime_spotify/album/album.dart';
import 'package:flytime_spotify/models/albumsearch.dart';
import 'package:flytime_spotify/models/playlist.dart';
import 'package:flytime_spotify/models/album.dart';
import 'package:flytime_spotify/models/playlistsearch.dart';
import 'package:flytime_spotify/services/spotifysearch_service.dart';

class Searchextended extends StatefulWidget {
  const Searchextended({super.key});

  @override
  State<Searchextended> createState() => _SearchextendedState();
}

class _SearchextendedState extends State<Searchextended> {
  final TextEditingController _controller = TextEditingController();
  List<Album> _searchResults = [];
  bool _isLoading = false;
  String? _error;

  void _search(String query) async {
    if (query.isEmpty) return;

    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final results = await SpotifyService().searchAlbums(query);
      setState(() {
        _searchResults = results;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
                    controller: _controller,

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
                          _search(_controller.text.trim());
                        },
                      ),
                    ),
                    onSubmitted: (value) => _search(value.trim()),
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
            if (!_isLoading)
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

            if (_isLoading)
              Center(child: CircularProgressIndicator())
            else if (_error != null)
              Center(child: Text('Error: $_error'))
            else
              Expanded(
                child: ListView.builder(
                  itemCount: _searchResults.length,
                  itemBuilder: (context, index) {
                    final album = _searchResults[index];
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
                        // Navigate to album detail page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => AlbumPage(albumId: album.albumId),
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
