import 'package:flutter/material.dart';
import 'package:flytime_spotify/models/album.dart';
import 'package:flytime_spotify/playback/playback.dart';
import 'package:flytime_spotify/providers/download.dart';
import 'package:flytime_spotify/providers/play.dart';
import 'package:flytime_spotify/services/spotify_service.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:provider/provider.dart';

class AlbumPage extends StatefulWidget {
  final String albumId;
  const AlbumPage({super.key, required this.albumId});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  late Future<Album> _albumFuture;
  Color _topColor = Colors.black;
  @override
  void initState() {
    super.initState();
    _albumFuture = SpotifyService().fetchAlbumById(widget.albumId);
    _albumFuture.then((album) {
      _updatePalette(album.imageUrl);
    });
  }

  Future<void> _updatePalette(String imageUrl) async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(
          NetworkImage(imageUrl),
          size: const Size(200, 200),
          maximumColorCount: 5,
        );

    setState(() {
      _topColor = paletteGenerator.dominantColor?.color ?? Colors.brown;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<downloadProvider>(context);
    final play = Provider.of<PlayProvider>(context);
    return Scaffold(
      body: FutureBuilder<Album>(
        future: _albumFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.hasData) {
            final album = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 400,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          _topColor,
                          Color.fromARGB(255, 18, 18, 18),
                        ], // Gradient colors
                        begin: Alignment.topCenter, // Start point
                        end: Alignment.bottomCenter, // End point
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 23,
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 200,
                            width: 200,
                            color: Colors.transparent,
                            child: Image.network(album.imageUrl),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            album.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Row(
                          children: [
                            SizedBox(width: 15),

                            Text(
                              album.artist,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Text(
                              '1h4m',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              provider.toggledownload();
                            },
                            child: provider.isdownload
                                ? Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                      color: Color.fromARGB(255, 30, 215, 96),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  )
                                : Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(360),
                                      ),
                                      color: Colors.transparent,
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.arrow_downward_rounded,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                  ),
                          ),

                          Image.asset('assets/images/p1.png'),

                          Icon(Icons.more_horiz, color: Colors.grey),
                        ],
                      ),

                      Row(
                        children: [
                          Image.asset('assets/images/ps.png'),
                          GestureDetector(
                            onTap: () {
                              play.togglePlay();
                            },
                            child: play.isplayed
                                ? Icon(
                                    Icons.pause_circle,
                                    size: 50,
                                    color: Color.fromARGB(255, 30, 215, 96),
                                  )
                                : Icon(
                                    Icons.play_circle,
                                    size: 50,
                                    color: Color.fromARGB(255, 30, 215, 96),
                                  ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 1, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: album.tracks.map((track) {
                        return ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    child: Text(
                                      track,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.explicit, size: 13),
                                      SizedBox(width: 2),
                                      Text(
                                        album.artist,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),

                          onTap: () {},
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: Text("No data"));
          }
        },
      ),
    );
  }
}
