import 'package:flutter/material.dart';
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
  final SpotifyService _spotifyService = SpotifyService();
  final TextEditingController _controller = TextEditingController();

  List<AlbumSearch> _albums = [];
  List<PlaylistSearch> _playlists = [];
  bool _isLoading = false;

  void _performSearch() async {
    final query = _controller.text.trim();
    if (query.isEmpty) return;

    setState(() => _isLoading = true);

    try {
      final results = await _spotifyService.search(query);
      setState(() {
        _albums = List<AlbumSearch>.from(results['albums'] ?? []);
        _playlists = List<PlaylistSearch>.from(results['playlists'] ?? []);
      });
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Search failed')));
    }

    setState(() => _isLoading = false);
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
                    ),
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
              const Center(child: CircularProgressIndicator())
            else
              Expanded(
                child: ListView(
                  children: [
                    if (_albums.isNotEmpty) ...[
                      const Text(
                        'Albums',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ..._albums.map(
                        (album) => ListTile(
                          title: Text(album.name),
                          subtitle: Text(album.artist),
                          leading: Image.network(
                            album.imageUrl,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                    if (_playlists.isNotEmpty) ...[
                      const SizedBox(height: 20),
                      const Text(
                        'Playlists',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ..._playlists.map(
                        (playlist) => ListTile(
                          title: Text(playlist.name),
                          //  subtitle: Text(playlist.artist),
                          leading: Image.network(
                            playlist.imageUrl,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
