import 'package:flutter/material.dart';
import 'package:flytime_spotify/feature/album/controller/album_controller.dart';
import 'package:flytime_spotify/feature/playlist/controller/playlist_controller.dart';

import 'package:flytime_spotify/feature/playlist/model/playlist_model.dart';
import 'package:flytime_spotify/providers/download.dart';
import 'package:flytime_spotify/providers/play.dart';
import 'package:flytime_spotify/services/spotifyplaylist_service.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:provider/provider.dart';

class PlaylistPage extends StatefulWidget {
  final String playlistId;
  const PlaylistPage({super.key, required this.playlistId});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PlaylistController>();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<downloadProvider>(context);
    final play = Provider.of<PlayProvider>(context);
    final controller = context.watch<PlaylistController>();

    return Scaffold(
      body: FutureBuilder<PlaylistModel>(
        future: controller.playlistFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.hasData) {
            final playlist = snapshot.data!;
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
                          controller.topColor,
                          Color.fromARGB(255, 18, 18, 18),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
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
                            child: Image.network(playlist.imageUrl),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            playlist.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Row(
                          children: [
                            SizedBox(width: 15),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(360),
                                ),
                                color: Colors.blue,
                              ),
                              child: Center(
                                child: Text(
                                  'U',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'User',
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
                      children: playlist.tracks.map((track) {
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
                                        playlist.name,
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

                          onTap: () {
                            print('Tapped on $track');
                          },
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
