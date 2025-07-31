import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flytime_spotify/artist/remamusic.dart';
import 'package:flytime_spotify/models/artist.dart';
import 'package:flytime_spotify/services/spotifyartist_service.dart';

class Rema extends StatefulWidget {
  final String artistId;
  const Rema({super.key, required this.artistId});

  @override
  State<Rema> createState() => _RemaState();
}

class _RemaState extends State<Rema> {
  String _selectedValue = "One";
  late Future<Artist> _artistFuture;

  @override
  void initState() {
    super.initState();
    _artistFuture = SpotifyService().fetchArtistById(widget.artistId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Artist>(
        future: _artistFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.hasData) {
            final artist = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Image.network(artist.imageUrl),
                        Positioned(
                          left: 20,
                          bottom: 10,
                          child: Text(
                            artist.name,
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      '21.6M monthly listeners',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20),

                          Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(360),
                              ),
                              color: Colors.transparent,
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Center(child: Text('Follow')),
                          ),

                          SizedBox(width: 10),
                          Icon(Icons.more_horiz, color: Colors.grey),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(
                            Icons.shuffle_rounded,
                            color: Color.fromARGB(255, 30, 215, 96),
                            size: 30,
                          ),
                          Icon(
                            Icons.play_circle,
                            size: 50,
                            color: Color.fromARGB(255, 30, 215, 96),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: CustomSlidingSegmentedControl<String>(
                      initialValue: _selectedValue,

                      children: {
                        'One': Text('Music'),
                        'Two': Text('Events'),
                        'Three': Text('Merch'),
                      },
                      decoration: BoxDecoration(color: Colors.transparent),
                      thumbDecoration: BoxDecoration(
                        color: Colors.transparent,

                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 30, 215, 96),
                            width: 2,
                          ),
                        ),
                      ),
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      onValueChanged: (value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        if (_selectedValue == "One")
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Popular',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Remamusic(),
                            ],
                          )
                        else if (_selectedValue == "Two")
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,

                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/T1.png',
                                          height: 70,
                                          width: 70,
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Madrid'),
                                            Text(
                                              'Fri,4PM•Talrkin',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.add_circle_outline,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 20),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,

                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/T2.png',
                                          height: 70,
                                          width: 70,
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Barcelona'),
                                            Text(
                                              'Sun,6PM•Plaza Mayor-Poble Espanyol',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.add_circle_outline,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 20),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 50),
                              ],
                            ),
                          )
                        else if (_selectedValue == "Three")
                          SingleChildScrollView(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 200,
                                  width: 150,
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/m1.png',
                                        height: 150,
                                        width: 150,
                                      ),

                                      Text(
                                        'Rave & Roses:CD',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 200,
                                  width: 150,
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/m2.png',
                                        height: 150,
                                        width: 150,
                                      ),

                                      Text(
                                        'White T-Shirt-Collab Rema x Places+Faces',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        SizedBox(height: 50),
                      ],
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
